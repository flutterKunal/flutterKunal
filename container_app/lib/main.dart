import 'package:flutter/material.dart';
//import 'color.dart';
//import 'padding.dart';
//import 'margin.dart';
//import 'decoration.dart';
//import 'borderRadius.dart';
//import 'colord.dart';
//import 'boxShadow.dart';
import 'gradient.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: //ColorContainer(),
      //PaddingContainer(),
      //MarginContainer(),
     // DecorateContainer(),
     //BRadius(),
     //ColorDecorstion()
     //Shadow(),
     GradientBox(),
    );
  }
}
