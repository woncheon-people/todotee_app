import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/dto/todo_request_dto.dart';
import 'package:todotee_app/pages/todo/bloc/todo_bloc.dart';
import 'package:todotee_app/pages/todo/bloc/todo_event.dart';
import 'package:todotee_app/pages/todo/bloc/todo_state.dart';
import 'package:todotee_app/pages/todo/widgets/add_todo_input_molecule.dart';
import 'package:todotee_app/pages/todo/widgets/todo_error_message_organism.dart';
import 'package:todotee_app/pages/todo/widgets/todo_item_list_organism.dart';

class TodoPage extends StatelessWidget {
  static const routeName = "/todos";

  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoBloc todoBloc = context.read<TodoBloc>();

    todoBloc.add(GetTodosEvent());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: Column(
          children: [
            AddTodoInputMolecule(
              onPressed: _onPressAddButton(todoBloc),
            ),
            BlocBuilder<TodoBloc, TodoState>(
              bloc: todoBloc,
              builder: (context, state) {
                final bool isLoading = state.loading;
                final bool isErrorOccured = state.error != null;

                return Expanded(
                    child: isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : isErrorOccured
                            ? const TodoErrorMessageOrganism()
                            : TodoItemListOrganism(todoList: state.todoList));
              },
            ),
          ],
        ),
      ),
    );
  }

  void Function(String) _onPressAddButton(TodoBloc todoBloc) => (title) {
        todoBloc.add(
          CreateTodoEvent(
            body: TodoRequestDto(title: title, completed: false),
          ),
        );
      };
}
