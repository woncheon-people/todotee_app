import 'package:flutter/material.dart';

class TodoItemAtom extends StatelessWidget {
  final bool value;
  final String contents;
  final void Function(bool)? onChanged;
  final void Function() onDelete;

  const TodoItemAtom({
    super.key,
    required this.value,
    required this.contents,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final TextStyle contentTextStyle = themeData.textTheme.bodyLarge!;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: (state) {
            if (state != null) {
              if (onChanged != null) {
                onChanged!(state);
              }
            }
          },
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 11.0),
            child: Text(
              contents,
              style: TextStyle(
                fontFamily: contentTextStyle.fontFamily,
                fontSize: contentTextStyle.fontSize,
                fontWeight: contentTextStyle.fontWeight,
                height: contentTextStyle.height,
                letterSpacing: contentTextStyle.letterSpacing,
                color: value ? Colors.grey : Colors.black,
                decoration:
                    value ? TextDecoration.lineThrough : TextDecoration.none,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: onDelete,
          icon: const Icon(Icons.close_rounded),
        )
      ],
    );
  }
}
