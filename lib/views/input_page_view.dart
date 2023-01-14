import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/components/card_tela.dart';
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
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;

// 1 = male, 2 = female
  void updateColour(Genero generoSelecionado) {
    // ignore: unrelated_type_equality_checks
    if (generoSelecionado == Genero.masculino ) {
      //card masculino pressionado
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour == inactiveCardColour;

      }
    }
    //card feminino pressionado
    if (generoSelecionado == Genero.feminino) {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour == inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' texto appbar'),
        ),
        body: Column(children: <Widget>[
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColour(Genero.masculino);
                    });
                  },
                  child: CardTela(
                    colour: maleCardColour,
                    cardChild: const IconComponent(
                      icon: FontAwesomeIcons.mars,
                      labelSexo: 'Masculino',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                     setState(() {
                      updateColour(Genero.feminino);
                    });
                  },
                  child: CardTela(
                    colour: femaleCardColour,
                    cardChild: const IconComponent(
                      icon: FontAwesomeIcons.venus,
                      labelSexo: 'Feminino',
                    ),
                  ),
                ),
              )
            ],
          )),
          // const Expanded(
          //     child: Expanded(
          //   child: CardTela(cardChild: IconComponent(),),
          // )),
          // Expanded(
          //     child: Row(
          //   children: const [
          //     Expanded(
          //       child: CardTela(cardChild: IconComponent(),),
          //     ),
          //     Expanded(
          //       child: CardTela(cardChild: IconComponent(),),
          //     )
          //   ],
          // )),
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