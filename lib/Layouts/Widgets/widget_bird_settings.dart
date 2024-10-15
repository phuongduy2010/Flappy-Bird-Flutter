// ignore_for_file: prefer_const_constructors

import 'package:flappy_bird/Database/database.dart';
import 'package:flappy_bird/Resources/strings.dart';
import 'package:flutter/material.dart';

import '../../Global/functions.dart';

class BirdSettings extends StatefulWidget {
  const BirdSettings({Key? key}) : super(key: key);

  @override
  State<BirdSettings> createState() => _BirdSettingsState();
}

class _BirdSettingsState extends State<BirdSettings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: myText("Characters", Colors.black, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getCharacters()),
      ],
    );
  }

  Map<String, String> _getCharactersMap() {
    Map<String, String> characters = {
      "bird": "assets/pics/bird.png",
      "blue": "assets/pics/blue.png",
      "green": "assets/pics/green.png"
    };
    return characters;
  }

  List<Widget> getCharacters() {
    Map<String, String> characters = _getCharactersMap();
    List<Widget> list = [];
    characters.forEach((key, value) {
      list.add(GestureDetector(
        onTap: () {
          setState(() {
            Str.bird = value;
            write("bird", Str.bird);
          });
        },
        child: Opacity(
          opacity: Str.bird == value ? 1 : 0.4,
          child: SizedBox(
            width: 75,
            height: 75,
            child: Image.asset(
              value,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ));
    });
    return list;
  }
}
