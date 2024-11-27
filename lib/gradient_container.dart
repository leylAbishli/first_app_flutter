import 'package:first_app/dice_controller.dart';
import 'package:flutter/material.dart';


class GradientColor extends StatelessWidget {
 const GradientColor(this.color1, this.color2, {super.key});

   const GradientColor.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
            child:DiceRoller()
        )
    );
  }
}
