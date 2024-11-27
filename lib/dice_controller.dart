import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
     return _DiceRollerState();
  }
}

// _(underscore) burda bunu bildirir ki bu class ozel olacaq yeni  ancag bu faylda istifade oluna bilecek
//yeni bu file basqa file elave elesek bele diger file burdaki bu classa el cata bilmeyecek
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll=2;
  final randomizer= Random();

  void rollDice() {
    setState(() {
      currentDiceRoll= randomizer.nextInt(6) + 1; // nextIn(6) 0-dan 5 e kimi verir ona gore +1 elave olunur ki 1-6 arasinda versin
    });

  }
  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}