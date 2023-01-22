import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:imc/components/card_tela.dart';
import 'package:imc/components/constantes.dart';
import 'package:imc/components/icon_component.dart';

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
  Genero? generoSelecionado;
  int altura = 180;
  int peso = 60;
  int idade = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Calculadora de IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: CardTela(
                    onPress: () {
                      setState(() {
                        generoSelecionado = Genero.masculino;
                      });
                    },
                    colour: generoSelecionado == Genero.masculino
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: const IconComponent(
                      icon: FontAwesomeIcons.mars,
                      labelSexo: 'Masculino',
                    )),
              ),

              //Card Feminino
              Expanded(
                child: CardTela(
                    onPress: () {
                      setState(() {
                        generoSelecionado = Genero.feminino;
                      });
                    },
                    colour: generoSelecionado == Genero.feminino
                        ? activeCardColour
                        : inactiveCardColour,
                    cardChild: const IconComponent(
                      icon: FontAwesomeIcons.venus,
                      labelSexo: 'Feminino',
                    )),
              ),
            ],
          )),
          Expanded(
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
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: const Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: const Color(0xFFEB1555),
                      overlayColor: const Color(0x29EB1555),
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          const RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: altura.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          altura = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardTela(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Peso',
                          style: labelTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: numberTextStyle,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    peso--;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                
                                onPressed: () {
                                  setState(() {
                                    peso++;
                                  });
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: CardTela(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Idade',
                          style: labelTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  idade++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFEB1555),
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 60,
          ),
        ],
      ),
    );
  }
}

// Container(
//   margin: const EdgeInsets.all(15),
//   decoration: BoxDecoration(
//     color: const Color(0xFF1D1E33),
//     borderRadius: BorderRadius.circular(10),
//   ),
// ),

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      // ignore: sort_child_properties_last
      child: Icon(icon),

      onPressed: onPressed as void Function(),
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
