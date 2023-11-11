import '../../../dto/memo_response_dto.dart';

sealed class MemoDetailState {
  final bool loading;
  final MemoResponseDto? memo;
  final Object? error;

  MemoDetailState({
    required this.loading,
    required this.memo,
    required this.error,
  });
}

class MemoDetailStateInit extends MemoDetailState {
  MemoDetailStateInit()
      : super(
          loading: false,
          memo: null,
          error: null,
        );
}

class MemoDetailStateLoading extends MemoDetailState {
  MemoDetailStateLoading({required super.memo})
      : super(
          loading: true,
          error: null,
        );
}

class MemoDetailStateSuccess extends MemoDetailState {
  MemoDetailStateSuccess({required super.memo})
      : super(loading: false, error: null);
}

class MemoDetailStateError extends MemoDetailState {
  MemoDetailStateError({required super.error})
      : super(
          memo: null,
          loading: false,
        );
}
