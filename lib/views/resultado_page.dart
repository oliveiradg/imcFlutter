import 'package:flutter/material.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CalculadoraIMC'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.yellow,
        child: const Center(
          child: Text('Resultado',
              style: TextStyle(
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
      
      
    );
  }
}
