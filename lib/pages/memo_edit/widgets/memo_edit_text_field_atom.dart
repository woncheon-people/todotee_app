import 'package:flutter/material.dart';

class MemoEditTextFieldAtom extends StatelessWidget {
  final int? maxLines;
  final int? maxLength;
  final String? hintText;
  final TextEditingController controller;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;

  const MemoEditTextFieldAtom({
    super.key,
    required this.controller,
    this.maxLines,
    this.maxLength,
    this.hintText,
    this.textStyle,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
      maxLines: maxLines,
      maxLength: maxLength,
      style: textStyle,
    );
  }
}
