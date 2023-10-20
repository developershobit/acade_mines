import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice_$currentDiceRoll.png',
          width: 250,
        ),
        const SizedBox(
          height: 15,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            foregroundColor: Color.fromARGB(255, 31, 34, 45),
            textStyle: const TextStyle(fontSize: 30),
          ),
          child: const Text('Role Dice'),
        )
      ],
    );
  }
}
