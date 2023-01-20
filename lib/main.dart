import 'package:flutter/material.dart';
import 'package:imc/views/input_page_view.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
          secondary: Colors.purple,
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
           color:  Color(0xFFFFFFFF),
          ),
        ),
      ),
      title: 'Calculadora IMC',
      home: const InputPage(),
    );
  }
}
