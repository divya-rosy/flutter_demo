import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
var currentDiceRoll = 1;
  void rollDice() {
    //var diceroll= Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll= randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 150,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(20),
              textStyle: const TextStyle(fontSize: 18),
            ),
            child: const Text('Roll Dice'),
          )
        ],
      ),
    );
  }
}