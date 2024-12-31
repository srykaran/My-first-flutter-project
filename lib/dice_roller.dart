import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  final randomizer = Random();
  var currentDiceRoll = 2;
  void rollDice(){

    setState((){
      currentDiceRoll = randomizer.nextInt(6)+1;

  });}
  @override
  Widget build( context) {
  return  Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset('assets/images/dice-$currentDiceRoll.png' ,width:200,
      ),
      const SizedBox(height: 20,),
      TextButton(onPressed: rollDice ,
        style: TextButton.styleFrom(

            foregroundColor: Colors.white),
        child: const Text('Roll the Dice!'),

      )
    ] ,
  );
  }
}