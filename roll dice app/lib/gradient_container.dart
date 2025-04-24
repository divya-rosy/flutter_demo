import 'package:first_app/diceroll.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.blue({super.key})
      : color1 = const Color.fromARGB(255, 49, 137, 209),
        color2 = const Color.fromARGB(255, 29, 161, 131);
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child:DiceRoller(),
      ),
    );
  }
}
