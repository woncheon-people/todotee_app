import 'package:flutter/material.dart';

class AddMemoPageInputControllers {
  late TextEditingController _titleController;
  TextEditingController get titleController => _titleController;

  late TextEditingController _memoController;
  TextEditingController get memoController => _memoController;

  AddMemoPageInputControllers();

  void initializeControllers() {
    _titleController = TextEditingController();
    _memoController = TextEditingController();
  }
}
