import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/pages/memo_detail/bloc/memo_detail_event.dart';
import 'package:todotee_app/pages/memo_detail/bloc/memo_detail_state.dart';

import '../../../api/memo_api.dart';
import '../../../dto/memo_response_dto.dart';

class MemoDetailBloc extends Bloc<MemoDetailEvent, MemoDetailState> {
  final MemoApi memoApi;

  MemoDetailBloc({required this.memoApi}) : super(MemoDetailStateInit()) {
    on<MemoEventInitialize>((event, emit) {
      emit(MemoDetailStateInit());
    });
    
    on<GetMemoEvent>((event, emit) async {
      emit(MemoDetailStateLoading(memo: state.memo));
      try {
        final res = await memoApi.getMemoById(event.id);
        final MemoResponseDto memo = MemoResponseDto.fromJson(res);
        emit(MemoDetailStateSuccess(memo: memo));
      } catch (error) {
        _processError(error, emit);
      }
    });
  }

  void _processError(Object error, Emitter<MemoDetailState> emit) {
    if (kDebugMode) {
      print(error);
    }
    emit(MemoDetailStateError(error: error));
  }
}
