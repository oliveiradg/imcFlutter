import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IconComponent({
    required this.icon,
    required this.labelSexo,
  });

  final IconData icon;
  final String labelSexo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: const Color(0xFFFFFFFF),
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          labelSexo,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
