import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../dto/todo_request_dto.dart';
import '../../../dto/todo_response_dto.dart';
import '../bloc/todo_bloc.dart';
import '../bloc/todo_event.dart';
import 'todo_item_atom.dart';

class TodoItemListOrganism extends StatelessWidget {
  final List<TodoResponseDto> todoList;

  const TodoItemListOrganism({super.key, required this.todoList});

  @override
  Widget build(BuildContext context) {
    final TodoBloc todoBloc = context.read<TodoBloc>();

    return SingleChildScrollView(
      child: Column(
        children: todoList
            .map(
              (todo) => TodoItemAtom(
                value: todo.completed,
                contents: todo.title,
                onChanged: _onChanged(todo, todoBloc),
                onDelete: _onDelete(todo, todoBloc),
              ),
            )
            .toList(),
      ),
    );
  }

  void Function(bool) _onChanged(TodoResponseDto todo, TodoBloc todoBloc) =>
      (completed) {
        todoBloc.add(
          ModifyTodoEvent(
            id: todo.id,
            body: TodoRequestDto(
              completed: completed,
              title: todo.title,
            ),
          ),
        );
      };

  void Function() _onDelete(TodoResponseDto todo, TodoBloc todoBloc) => () {
        todoBloc.add(
          DeleteTodoEvent(id: todo.id),
        );
      };
}
