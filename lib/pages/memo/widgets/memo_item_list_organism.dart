import 'package:flutter/material.dart';
import 'package:todotee_app/dto/memo_response_dto.dart';

import 'memo_item_molecule.dart';

class MemoItemListOrganism extends StatelessWidget {
  final List<MemoResponseDto> memoList;

  const MemoItemListOrganism({super.key, required this.memoList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:
            memoList.map((memo) => MemoItemMolecule(memo: memo)).toList(),
      ),
    );
  }
}
