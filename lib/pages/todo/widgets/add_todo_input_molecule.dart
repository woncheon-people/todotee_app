import 'package:flutter/material.dart';

class AddTodoInputMolecule extends StatelessWidget {
  final void Function(String) onPressed;

  const AddTodoInputMolecule({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
          ),
        ),
        IconButton(
            onPressed: () {
              onPressed(controller.text);
              controller.clear();
            },
            icon: const Icon(Icons.add_box))
      ],
    );
  }
}
