import 'package:flutter/material.dart';
import 'package:imc/components/card_tela.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' texto appbar'),
      ),
      body:Column(
        children: <Widget>[
          Expanded(child: Row(children:  [
            Expanded(child: CardTela(),),
            Expanded(child: CardTela(),)
          ],)),





          Expanded(child: Expanded(child: CardTela(),) ),
          Expanded(child: Row(children:  [
            Expanded(child: CardTela(),),
            Expanded(child: CardTela(),)
          ],) ),
        ]
      )
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