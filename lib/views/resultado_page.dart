import 'package:flutter/material.dart';
import 'package:imc/components/bottom_botao.dart';
import 'package:imc/components/card_tela.dart';
import 'package:imc/components/constantes.dart';

class ResultadoPage extends StatelessWidget {
  const ResultadoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
          
            child: Container(
              child: const Text(
                'Resultado',
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CardTela(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'NORMAL',
                    style: resultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: numberTextStyle,
                  ),
                  Text(
                    'Você tem um peso normal. Bom trabalho!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  )
                ],
              ),
              colour: activeCardColour,
              onPress: () {},
            ),
          ),
          BotaoInferior(
            buttonTitle: 'RECALCULAR',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
