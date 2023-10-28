import 'package:todotee_app/dto/todo_response_dto.dart';

sealed class TodoState {
  final bool loading;
  final List<TodoResponseDto> todoList;
  final Object? error;

  TodoState({
    required this.loading,
    required this.todoList,
    required this.error,
  });
}

class TodoStateInit extends TodoState {
  TodoStateInit()
      : super(
          loading: false,
          todoList: [],
          error: null,
        );
}

class TodoStateLoading extends TodoState {
  TodoStateLoading({required super.todoList})
      : super(
          loading: true,
          error: null,
        );
}

class TodoStateSuccess extends TodoState {
  TodoStateSuccess({required super.todoList})
      : super(
          loading: false,
          error: null
        );
}

class TodoStateError extends TodoState {
  TodoStateError({required super.error})
      : super(
          todoList: [],
          loading: false,
        );
}

