import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/memo_api.dart';
import '../../../dto/memo_response_dto.dart';
import 'memo_event.dart';
import 'memo_state.dart';

class MemoBloc extends Bloc<MemoEvent, MemoState> {
  final MemoApi memoApi;

  MemoBloc({required this.memoApi}): super(MemoStateInit()) {
    on<GetMemosEvent>((event, emit) async {
      emit(MemoStateLoading(memoList: state.memoList));
      try {
        final res = await memoApi.getMemos();
        List<MemoResponseDto> memoList =
            res.map((e) => MemoResponseDto.fromJson(e)).toList();
        emit(MemoStateSuccess(memoList: memoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<CreateMemoEvent>((event, emit) async {
      emit(MemoStateLoading(memoList: state.memoList));
      try {
        final res = await memoApi.create(event.body);
        final memo = MemoResponseDto.fromJson(res);
        state.memoList.add(memo);
        emit(MemoStateSuccess(memoList: state.memoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<ModifyMemoEvent>((event, emit) async {
      emit(MemoStateLoading(memoList: state.memoList));
      try {
        await memoApi.modifyMemo(event.id, event.body);
        final int index =
            state.memoList.indexWhere((element) => element.id == event.id);
        final res = await memoApi.getMemoById(event.id);
        final memo = MemoResponseDto.fromJson(res);
        state.memoList[index] = memo;
        emit(MemoStateSuccess(memoList: state.memoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<DeleteMemoEvent>((event, emit) async {
      emit(MemoStateLoading(memoList: state.memoList));
      try {
        await memoApi.deleteMemoById(event.id);
        final int index =
            state.memoList.indexWhere((element) => element.id == event.id);
        state.memoList.removeAt(index);
        emit(MemoStateSuccess(memoList: state.memoList));
      } catch (error) {
        _processError(error, emit);
      }
    });
  }

  void _processError(Object error, Emitter<MemoState> emit) {
    if (kDebugMode) {
      print(error);
    }
    emit(MemoStateError(error: error));
  }
}
