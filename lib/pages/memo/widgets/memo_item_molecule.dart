import 'package:flutter/material.dart';
import 'package:todotee_app/dto/memo_response_dto.dart';

class MemoItemMolecule extends StatelessWidget {
  final MemoResponseDto memo;

  const MemoItemMolecule({
    super.key,
    required this.memo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                color: Colors.black87
              ),
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
                color: Colors.black54
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
