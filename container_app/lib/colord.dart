import 'package:flutter/material.dart';

class ColorDecorstion extends StatelessWidget{
  const ColorDecorstion=({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color"),
        centerTitle: true,
      ),
      body: Center(child: 
      Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(color: Colors.blue, width: 10)
        ),
      ),
      ),
    );
  }
}