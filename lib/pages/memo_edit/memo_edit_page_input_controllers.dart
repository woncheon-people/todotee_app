import 'package:flutter/material.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page_arguments.dart';
import 'package:todotee_app/pages/memo_edit/types/memo_edit_type.dart';

class MemoEditPageInputControllers {
  late TextEditingController _titleController;
  TextEditingController get titleController => _titleController;

  late TextEditingController _memoController;
  TextEditingController get memoController => _memoController;

  MemoEditPageInputControllers();

  void initializeControllers(MemoEditPageArguments arguments) {
    _titleController = TextEditingController();
    _memoController = TextEditingController();

    if (arguments.memoEditType == MemoEditType.modify) {
      _titleController.text = arguments.memo!.title;
      _memoController.text = arguments.memo!.memo;
    }
  }
}
