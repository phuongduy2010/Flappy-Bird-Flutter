// ignore_for_file: prefer_const_constructors
import 'package:flappy_bird/Database/database.dart';
import 'package:flappy_bird/Resources/strings.dart';
import 'package:flutter/material.dart';
import '../../Global/functions.dart';

class ThemesSettings extends StatefulWidget {
  const ThemesSettings({Key? key}) : super(key: key);
  @override
  State<ThemesSettings> createState() => _ThemesSettingsState();
}

class _ThemesSettingsState extends State<ThemesSettings> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Center(child: Container(margin: EdgeInsets.symmetric(vertical: 10),child: Text("Themes",style: TextStyle(fontSize: 20,fontFamily: "Magic4"))),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getThemes(),
          ),
        ],
      ),
    );
  }

  List<Widget> getThemes() {
    List<Widget> list = [];
    for (var i = 0; i <= 2; i++) {
      list.add(GestureDetector(
          onTap: () {
            setState(() {
              Str.image = "$i";
              write("background", Str.image);
              background(Str.image);
            });
          },
          child: Opacity(
            opacity: Str.image == "$i" ? 1 : 0.4,
            child: Image.asset(
              "assets/pics/$i.png",
              width: 73,
              height: 70,
            ),
          )));
    }
    return list;
  }
}