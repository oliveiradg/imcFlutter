// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerHeight = 80;
const bottomContainerColour = Color(0xFFEB1555);

class CardTela extends StatelessWidget {
  const CardTela({
    Key? key,
    required Color colour,
    required this.cardChild, required this.onPress,
    
  }) : super(key: key);

  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress as void Function()?, 
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: activeCardColour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
