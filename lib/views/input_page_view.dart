import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/components/card_tela.dart';
import 'package:imc/components/icon_component.dart';
import 'package:imc/constantes.dart';

enum Genero {
  masculino,
  feminino,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Genero generoSelecionado;
  int altura = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' texto appbar'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: CardTela(
                      colour: generoSelecionado == Genero.masculino
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: const IconComponent(
                        icon: FontAwesomeIcons.mars,
                        labelSexo: 'Masculino',
                      ),
                      onPress: () {
                        setState(() {
                          generoSelecionado = Genero.masculino;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CardTela(
                      colour: generoSelecionado == Genero.feminino
                          ? activeCardColour
                          : inactiveCardColour,
                      cardChild: const IconComponent(
                        icon: FontAwesomeIcons.venus,
                        labelSexo: 'Feminino',
                      ),
                      onPress: () {
                        setState(() {
                          generoSelecionado = Genero.feminino;
                        });
                      },
                    ),
                  )
                ],
              )),
              Expanded(
                  child: Expanded(
                child: CardTela(
                  colour: activeCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Altura',
                        style: labelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            altura.toString(),
                            style: numberTextStyle,
                          ),
                          const Text(
                            'cm',
                            style: labelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        value: altura.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: const Color(0xFFEB1555),
                        inactiveColor: const Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          print(newValue);
                        },
                      )
                    ],
                  ),
                  onPress: () {},
                ),
              )),
              Expanded(
                  child: Row(
                children:  [
                  Expanded(
                    child: CardTela(
                      cardChild: null,
                      colour: null,
                      onPress: (){},                    ),
                  ),
                  Expanded(
                    child: CardTela(),
                  )
                ],
              )),
            ]));
  }
}


  

        
       
     
     
      // Container(
      //   margin: const EdgeInsets.all(15),
      //   decoration: BoxDecoration(
      //     color: const Color(0xFF1D1E33),
      //     borderRadius: BorderRadius.circular(10),
      //   ),
      // ),