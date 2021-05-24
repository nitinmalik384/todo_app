import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import "package:todo_app/Screens/task_screen.dart";
import 'package:todo_app/modal/back_Animation.dart';
import "dart:io" show Platform;

import 'package:todo_app/modal/list.dart';

void main() {
  runApp(MyApp());

 }

  class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
 return MultiProvider(
   providers: [
     ChangeNotifierProvider.value(value: TaskData()),
     ChangeNotifierProvider.value(value: BackAnimate()),
   ],
   child: MaterialApp(
          home: TaskScreen(),
          debugShowCheckedModeBanner: false,
        ),
 );
    }
  }


