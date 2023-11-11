import 'package:flutter/material.dart';
import 'package:todotee_app/dto/memo_response_dto.dart';

import 'memo_item_molecule.dart';

class MemoItemListOrganism extends StatelessWidget {
  final List<MemoResponseDto> memoList;

  const MemoItemListOrganism({super.key, required this.memoList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        itemCount: memoList.length,
        itemBuilder: (context, index) => MemoItemMolecule(
          dismissibleKey: ValueKey<int>(index),
          memo: memoList[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 20.0),
      ),
    );
  }
}
