import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todotee_app/pages/memo_detail/bloc/memo_detail_bloc.dart';
import 'package:todotee_app/pages/memo_detail/bloc/memo_detail_event.dart';
import 'package:todotee_app/pages/memo_detail/bloc/memo_detail_state.dart';
import 'package:todotee_app/pages/memo_detail/memo_detail_page_arguments.dart';
import 'package:todotee_app/pages/memo_edit/memo_edit_page.dart';
import 'package:todotee_app/pages/memo_edit/types/memo_edit_type.dart';

import '../memo_edit/memo_edit_page_arguments.dart';

class MemoDetailPage extends StatelessWidget {
  static const String routeName = '/memo_detail';

  const MemoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as MemoDetailPageArguments;
    final memoDetailBloc = context.read<MemoDetailBloc>();

    memoDetailBloc.add(GetMemoEvent(id: arguments.id));

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
          BlocBuilder<MemoDetailBloc, MemoDetailState>(
            bloc: memoDetailBloc,
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  if (!state.loading || state.memo != null) {
                    Navigator.of(context).pushNamed(
                      MemoEditPage.routeName,
                      arguments: MemoEditPageArguments(
                        memo: state.memo!,
                        memoEditType: MemoEditType.modify,
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.edit),
                iconSize: 30.0,
              );
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 12.0,
        ),
        child: BlocBuilder<MemoDetailBloc, MemoDetailState>(
          bloc: memoDetailBloc,
          builder: (context, state) {
            final bool isLoading = state.loading;
            final bool isErrorOccured = state.error != null;

            return (isLoading || state.memo == null)
                ? const Center(child: CircularProgressIndicator())
                : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        state.memo!.title,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          state.memo!.memo,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
          },
        ),
      ),
    );
  }
}
