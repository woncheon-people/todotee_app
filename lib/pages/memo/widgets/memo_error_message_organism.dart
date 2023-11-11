import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todotee_app/pages/memo/bloc/memo_event.dart';

import '../bloc/memo_bloc.dart';

class MemoErrorMessageOrganism extends StatelessWidget {
  const MemoErrorMessageOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    final MemoBloc todoBloc = context.read<MemoBloc>();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "에러가 발생하였습니다.",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          TextButton(
            onPressed: () {
              todoBloc.add(GetMemosEvent());
            },
            child: const Text(
              "다시 로드하기",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
