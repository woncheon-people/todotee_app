import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/dto/todo_request_dto.dart';
import 'package:todotee_app/todo/bloc/todo_bloc.dart';
import 'package:todotee_app/todo/bloc/todo_event.dart';
import 'package:todotee_app/todo/bloc/todo_state.dart';
import 'package:todotee_app/todo/widgets/add_todo_input_molecule.dart';
import 'package:todotee_app/todo/widgets/todo_item_atom.dart';

class TodoPage extends StatelessWidget {
  static const routeName = "/todos";

  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoBloc todoBloc = context.read<TodoBloc>();
    final ThemeData themeData = Theme.of(context);

    todoBloc.add(GetTodosEvent());

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("TODOTEE", style: themeData.textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AddTodoInputMolecule(
              onPressed: (title) {
                todoBloc.add(
                  CreateTodoEvent(
                    body: TodoRequestDto(title: title, completed: false),
                  ),
                );
              },
            ),
            BlocBuilder<TodoBloc, TodoState>(
              bloc: todoBloc,
              builder: (context, state) {
                if (state.loading) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  if (state.error == null) {
                    return Column(
                      children: state.todoList
                          .map(
                            (todo) => TodoItemAtom(
                              value: todo.completed,
                              contents: todo.title,
                              onChanged: (completed) {
                                todoBloc.add(
                                  ModifyTodoEvent(
                                    id: todo.id,
                                    body: TodoRequestDto(
                                      completed: completed,
                                      title: todo.title,
                                    ),
                                  ),
                                );
                              },
                              onDelete: () {
                                todoBloc.add(
                                  DeleteTodoEvent(id: todo.id),
                                );
                              },
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return Center(
                        child: Column(
                      children: [
                        const Text("에러가 발생하였습니다."),
                        TextButton(
                          onPressed: () {
                            todoBloc.add(GetTodosEvent());
                          },
                          child: const Text("다시 로드하기"),
                        )
                      ],
                    ));
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
