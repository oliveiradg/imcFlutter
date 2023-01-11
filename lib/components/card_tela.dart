import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardTela extends StatelessWidget {
  const CardTela({
    Key? key, required this.cardChild,
  }) : super(key: key);

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10),
        ),
      child: cardChild,
      );
  }
}