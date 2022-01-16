import 'package:flutter/material.dart';
import 'dart:math';
class RandomDice extends StatefulWidget {
  @override
  State<RandomDice> createState() => _RandomDiceState();
}

class _RandomDiceState extends State<RandomDice> {
   int number=1;
    var rng = Random();
  void getrandomvalue(){
    
     setState(() {
        number = rng.nextInt(6);
        
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Get Random Dice'),
      ),
      body: Center(
          child: InkWell(
            onTap: (){
              getrandomvalue();
            },
            child: Image.asset(
                  'Assets/$number.png',
                  width: 200,
                  height: 200,
                ),
          )),
    );
  }
}
