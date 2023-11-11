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
        final res = await todoApi.getTodos();
        List<TodoResponseDto> todoList =
            res.map((e) => TodoResponseDto.fromJson(e)).toList();
        emit(TodoStateSuccess(todoList: todoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<CreateTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        final res = await todoApi.create(event.body);
        final todo = TodoResponseDto.fromJson(res);
        state.todoList.add(todo);
        emit(TodoStateSuccess(todoList: state.todoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<ModifyTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await todoApi.modifyTodo(event.id, event.body);
        final int index =
            state.todoList.indexWhere((element) => element.id == event.id);
        final res = await todoApi.getTodoById(event.id);
        final todo = TodoResponseDto.fromJson(res);
        state.todoList[index] = todo;
        emit(TodoStateSuccess(todoList: state.todoList));
      } catch (error) {
        _processError(error, emit);
      }
    });

    on<DeleteTodoEvent>((event, emit) async {
      emit(TodoStateLoading(todoList: state.todoList));
      try {
        await todoApi.deleteTodoById(event.id);
        final int index =
            state.todoList.indexWhere((element) => element.id == event.id);
        state.todoList.removeAt(index);
        emit(TodoStateSuccess(todoList: state.todoList));
      } catch (error) {
        _processError(error, emit);
      }
    });
  }

  void _processError(Object error, Emitter<TodoState> emit) {
    if (kDebugMode) {
      print(error);
    }
    emit(TodoStateError(error: error));
  }
}
