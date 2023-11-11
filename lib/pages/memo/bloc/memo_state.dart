import '../../../dto/memo_response_dto.dart';

sealed class MemoState {
  final bool loading;
  final List<MemoResponseDto> memoList;
  final Object? error;

  MemoState({
    required this.loading,
    required this.memoList,
    required this.error,
  });
}

class MemoStateInit extends MemoState {
  MemoStateInit()
      : super(
          loading: false,
          memoList: [],
          error: null,
        );
}

class MemoStateLoading extends MemoState {
  MemoStateLoading({required super.memoList})
      : super(
          loading: true,
          error: null,
        );
}

class MemoStateSuccess extends MemoState {
  MemoStateSuccess({required super.memoList})
      : super(loading: false, error: null);
}

class MemoStateError extends MemoState {
  MemoStateError({required super.error})
      : super(
          memoList: [],
          loading: false,
        );
}
