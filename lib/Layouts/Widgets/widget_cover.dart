// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
   Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      alignment: Alignment.center,
      child: Text(
        "Flabby Bird - Never Die",
        style:
            TextStyle(color: Colors.white, fontSize: 30, fontFamily: "Magic4"),
      ),
    );
  }
}
