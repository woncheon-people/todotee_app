import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/dto/memo_request_dto.dart';
import 'package:todotee_app/pages/main_page.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page_arguments.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page_input_controllers.dart';
import 'package:todotee_app/pages/memo_edit/types/memo_edit_type.dart';
import 'package:todotee_app/pages/memo_edit/widgets/memo_edit_text_field_atom.dart';
import 'package:todotee_app/pages/memo/bloc/memo_bloc.dart';
import 'package:todotee_app/pages/memo/bloc/memo_event.dart';

class MemoEditPage extends StatelessWidget {
  static const String routeName = '/memos/edit';

  const MemoEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as MemoEditPageArguments;
    final MemoBloc memoBloc = context.read<MemoBloc>();
    final MemoEditPageInputControllers controllers =
        context.read<MemoEditPageInputControllers>();

    controllers.initializeControllers(arguments);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          arguments.memoEditType == MemoEditType.create ? "메모 추가하기" : "메모 수정하기",
          style: const TextStyle(
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
                if (arguments.memoEditType == MemoEditType.create) {
                  memoBloc.add(
                    CreateMemoEvent(body: body),
                  );
                } else {
                  memoBloc.add(
                    ModifyMemoEvent(
                      id: arguments.memo!.id,
                      body: body,
                    ),
                  );
                }
                Navigator.of(context).popUntil(
                  ModalRoute.withName(MainPage.routeName),
                );
              } catch (e) {
                print(e);
              }
            },
            icon: Icon(arguments.memoEditType == MemoEditType.create
                ? Icons.add
                : Icons.edit),
            iconSize: 30.0,
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MemoEditTextFieldAtom(
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
              maxLines: 1,
            ),
            Expanded(
              child: MemoEditTextFieldAtom(
                controller: controllers.memoController,
                hintText: "내용을 입력해주세요",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
