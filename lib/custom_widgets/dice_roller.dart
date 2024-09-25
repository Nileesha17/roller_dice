
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;
  final randomizer = Random();
  void diceRoller(){
    setState(() {
       currentDiceRoll = randomizer.nextInt(6) +1;
       print('$currentDiceRoll');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assests/images/dice-$currentDiceRoll.png',width: 200,),
        SizedBox(height: 20,),
        TextButton(onPressed: (){
            diceRoller();
        }, child: Text("Roll Dice",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),))
      ],
    );
  }

}