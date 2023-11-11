sealed class MemoDetailEvent {}

class MemoEventInitialize extends MemoDetailEvent {}

class GetMemoEvent extends MemoDetailEvent {
  final int id;

  GetMemoEvent({required this.id});
}
