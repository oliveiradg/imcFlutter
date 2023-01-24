import 'package:flutter/material.dart';

class BotaoInferior extends StatelessWidget {
  const BotaoInferior({
    Key? key,
    required this.onTap,
    required this.buttonTitle,
  }) : super(key: key);

  final Function  onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function(),
      child: Container(
        // ignore: sort_child_properties_last
        child:  Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 60,
      ),
    );
  }
}