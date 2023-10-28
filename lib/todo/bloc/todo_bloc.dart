import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/api/todo_api.dart';
import 'package:todotee_app/dto/todo_response_dto.dart';
import 'package:todotee_app/todo/bloc/todo_event.dart';
import 'package:todotee_app/todo/bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoApi todoApi;

  TodoBloc({required this.todoApi}) : super(TodoStateInit()) {
    on<GetTodosEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await getTodoList(emit);
      } catch (error) {
        processError(error, emit);
      }
    });

    on<CreateTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await todoApi.create(event.body);
        await getTodoList(emit);
      } catch (error) {
        processError(error, emit);
      }
    });

    on<ModifyTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await todoApi.modifyTodo(event.id, event.body);
        await getTodoList(emit);
      } catch (error) {
        processError(error, emit);
      }
    });

    on<DeleteTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await todoApi.deleteTodoById(event.id);
        await getTodoList(emit);
      } catch (error) {
        processError(error, emit);
      }
    });
  }

  Future<void> getTodoList(Emitter<TodoState> emit) async {
    final res = await todoApi.getTodos();
    List<TodoResponseDto> todoList =
        res.map((e) => TodoResponseDto.fromJson(e)).toList();
    emit(TodoStateSuccess(todoList: todoList));
  }

  void processError(Object error, Emitter<TodoState> emit) {
    if (kDebugMode) {
      print(error);
    }
    emit(TodoStateError(error: error));
  }
}
