import 'package:flutter/material.dart';

class CardTela extends StatelessWidget {
  const CardTela({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10),
        ),
      );
  }
}