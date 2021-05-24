import 'dart:math';

import 'package:flutter/material.dart';

class BackAnimate extends ChangeNotifier{

  List colors=[
    Colors.lightBlueAccent,
    Colors.lightGreen,
    Colors.red.shade300,
    Colors.amber.shade900,
    Colors.teal,
    Colors.indigo.shade400,
    Colors.pink.shade300,
    Colors.yellow.shade700,
  ];
  Color randomColor= Colors.lightBlueAccent;

  updateColor()
  {
    randomColor=colors[Random().nextInt(colors.length)];
    notifyListeners();
  }

}