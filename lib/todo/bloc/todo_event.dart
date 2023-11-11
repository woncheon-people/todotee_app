import 'package:todotee_app/dto/todo_request_dto.dart';

sealed class TodoEvent {}

class GetTodosEvent extends TodoEvent {}

class ModifyTodoEvent extends TodoEvent {
  final int id;
  final TodoRequestDto body;

  ModifyTodoEvent({required this.id, required this.body});
}

class CreateTodoEvent extends TodoEvent {
  final TodoRequestDto body;

  CreateTodoEvent({required this.body});
}

class DeleteTodoEvent extends TodoEvent {
  final int id;

  DeleteTodoEvent({required this.id});
}
