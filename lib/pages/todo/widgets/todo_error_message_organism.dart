import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/todo_bloc.dart';
import '../bloc/todo_event.dart';

class TodoErrorMessageOrganism extends StatelessWidget {
  const TodoErrorMessageOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    final TodoBloc todoBloc = context.read<TodoBloc>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "에러가 발생하였습니다.",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
        TextButton(
          onPressed: () {
            todoBloc.add(GetTodosEvent());
          },
          child: const Text(
            "다시 로드하기",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
