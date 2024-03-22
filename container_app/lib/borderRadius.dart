import 'package:flutter/material.dart';

class BRadius extends StatelessWidget{
  const BRadius({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("BorderRadius"),
        centerTitle: true,
      ),
      body: Center(child: 
      Container(
        height: 300,
        width: 300,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.black,
            width:5
          )
          ),
      ),
      ),
    );
  }
}