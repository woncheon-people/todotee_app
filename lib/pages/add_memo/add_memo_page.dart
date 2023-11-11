import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/dto/memo_request_dto.dart';
import 'package:todotee_app/pages/add_memo/add_memo_page_input_controllers.dart';
import 'package:todotee_app/pages/add_memo/widgets/add_memo_text_field_atom.dart';
import 'package:todotee_app/pages/memo/bloc/memo_bloc.dart';
import 'package:todotee_app/pages/memo/bloc/memo_event.dart';

class AddMemoPage extends StatelessWidget {
  static const String routeName = '/memos/add';

  const AddMemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MemoBloc memoBloc = context.read<MemoBloc>();
    final AddMemoPageInputControllers controllers =
        context.read<AddMemoPageInputControllers>();

    controllers.initializeControllers();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "메모",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              final body = MemoRequestDto(
                title: controllers.titleController.text,
                memo: controllers.memoController.text,
                completed: false,
              );
              try {
                memoBloc.add(CreateMemoEvent(body: body));
                Navigator.of(context).pop();
              } catch (e) {
                print(e);
              }
            },
            icon: const Icon(Icons.add),
            iconSize: 30.0,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 12.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AddMemoTextFieldAtom(
                controller: controllers.titleController,
                hintText: "제목을 입력해주세요",
                textStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                hintStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              AddMemoTextFieldAtom(
                controller: controllers.memoController,
                hintText: "내용을 입력해주세요",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
