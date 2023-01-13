import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  const activeCardColour = Color(0xFF1D1E33);
  const inactiveCardColour = Color(0xFF111328);
  const bottomContainerHeight = 80;
  const bottomContainerColour = Color(0xFFEB1555);

class CardTela extends StatelessWidget {
  const CardTela({
    Key? key,
    required this.cardChild, required Color colour,
  }) : super(key: key);

  final Widget cardChild;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: activeCardColour,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
