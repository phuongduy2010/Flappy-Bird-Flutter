// ignore_for_file: prefer_const_constructors

import 'package:flappy_bird/Database/database.dart';
import 'package:flappy_bird/Global/functions.dart';
import 'package:flutter/material.dart';

import '../../Global/constant.dart';

class DifficultySettings extends StatefulWidget {
  const DifficultySettings({super.key});
  @override
  State<DifficultySettings> createState() => _DifficultySettingsState();
}

class _DifficultySettingsState extends State<DifficultySettings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.026),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: myText("Difficulty", Colors.black, 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Opacity(
                opacity: barrierMovement == 0.05 ? 1 : 0.4,
                child: gameButton(() {
                  setState(() {
                    barrierMovement = 0.05;  
                  });
                  write("level", barrierMovement);
                }, "Easy", Colors.green.shade300),
              ),
              Opacity(
                opacity: barrierMovement == 0.08 ? 1 : 0.4,
                child: gameButton(() {
                  setState(() {
                    barrierMovement = 0.08;  
                  });
                  write("level", barrierMovement);
                }, "Medium", Colors.yellow.shade700),
              ),
              Opacity(
                opacity: barrierMovement == 0.1 ? 1 : 0.4,
                child: gameButton(() {
                  setState(() {
                    barrierMovement = 0.1;  
                  });
                  write("level", barrierMovement);
                }, "Hard", Colors.red.shade300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}