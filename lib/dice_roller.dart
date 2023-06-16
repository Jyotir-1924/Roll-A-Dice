import 'package:flutter/material.dart';

import 'dart:math';

final assign = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var face = 2;

  void rollDice() {
    setState(() {
      face = assign.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$face.png',
          width: 250.0,
        ),
        const SizedBox(
          height: 30.0,
        ),
        TextButton(
          // rollDice is the function and is passed as a pointer.
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 40.0,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
