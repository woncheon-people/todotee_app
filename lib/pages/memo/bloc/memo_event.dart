import '../../../dto/memo_request_dto.dart';

sealed class MemoEvent {}

class GetMemosEvent extends MemoEvent {}

class ModifyMemoEvent extends MemoEvent {
  final int id;
  final MemoRequestDto body;

  ModifyMemoEvent({required this.id, required this.body});
}

class CreateMemoEvent extends MemoEvent {
  final MemoRequestDto body;

  CreateMemoEvent({required this.body});
}

class DeleteMemoEvent extends MemoEvent {
  final int id;

  DeleteMemoEvent({required this.id});
}