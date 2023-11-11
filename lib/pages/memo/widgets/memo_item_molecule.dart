import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/dto/memo_response_dto.dart';
import 'package:todotee_app/pages/memo/bloc/memo_event.dart';
import 'package:todotee_app/pages/memo_detail/memo_detail_page.dart';
import 'package:todotee_app/pages/memo_detail/memo_detail_page_arguments.dart';

import '../bloc/memo_bloc.dart';

class MemoItemMolecule extends StatelessWidget {
  final Key dismissibleKey;
  final MemoResponseDto memo;

  const MemoItemMolecule({
    super.key,
    required this.memo,
    required this.dismissibleKey,
  });

  @override
  Widget build(BuildContext context) {
    final MemoBloc memoBloc = context.read<MemoBloc>();

    return Dismissible(
      key: dismissibleKey,
      onDismissed: (direction) {
        memoBloc.add(DeleteMemoEvent(id: memo.id));
      },
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            MemoDetailPage.routeName,
            arguments: MemoDetailPageArguments(id: memo.id),
          );
        },
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                memo.title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Divider(
                height: 20,
                color: Colors.grey.shade300,
              ),
              Text(
                memo.memo,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
