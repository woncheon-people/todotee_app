import 'package:flutter/material.dart';

class LogoAtom extends StatelessWidget {
  final double width;

  const LogoAtom({
    super.key,
    this.width = 120.0,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/todotee.png',
      width: width,
    );
  }
}
