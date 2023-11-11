import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page.dart';
import 'package:todotee_app/pages/memo/bloc/memo_bloc.dart';
import 'package:todotee_app/pages/memo/bloc/memo_event.dart';
import 'package:todotee_app/pages/memo/bloc/memo_state.dart';
import 'package:todotee_app/pages/memo/widgets/memo_error_message_organism.dart';
import 'package:todotee_app/pages/memo/widgets/memo_item_list_organism.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page_arguments.dart';
import 'package:todotee_app/pages/memo_edit/types/memo_edit_type.dart';

class MemoPage extends StatelessWidget {
  const MemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MemoBloc memoBloc = context.read<MemoBloc>();

    memoBloc.add(GetMemosEvent());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11.0),
        child: BlocBuilder<MemoBloc, MemoState>(
          bloc: memoBloc,
          builder: (context, state) {
            final bool isLoading = state.loading;
            final bool isErrorOccured = state.error != null;

            return isLoading
                ? const Center(child: CircularProgressIndicator())
                : isErrorOccured
                    ? const MemoErrorMessageOrganism() // 에러 화면
                    : MemoItemListOrganism(memoList: state.memoList);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(MemoEditPage.routeName, arguments: MemoEditPageArguments(memoEditType: MemoEditType.create));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
