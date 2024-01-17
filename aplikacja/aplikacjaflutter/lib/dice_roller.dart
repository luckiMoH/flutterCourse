import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

    var currentDiceRoll = 6;
    
    int getRandomNumber () {
      Random random = randomizer;
      return random.nextInt(6) + 1;
    }

    void rollDice() {
      int randomNumber = getRandomNumber();
      setState(() {
        currentDiceRoll = randomNumber;   
      });
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice-$currentDiceRoll.png",
            width: 200,
          ),

          const SizedBox(height: 20,),

          TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
                //padding: const EdgeInsets.only(top: 20)
                ),
              child: const Text("Wylosuj kostkę!"))
        ],
      );
  }
}