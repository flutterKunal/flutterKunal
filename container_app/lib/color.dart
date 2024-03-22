import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget{

  const ColorContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Container"),
        centerTitle: true,
      ),
      body:Center( 
        child:
        Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),)
    );
  }
}