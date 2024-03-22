import 'package:flutter/material.dart';

class PaddingContainer extends StatelessWidget{
  const PaddingContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding"),
        centerTitle: true,
      ),
      body: Center( child: 
      Container(
        height: 300,
        width: 300,
        padding: const EdgeInsets.only(top: 10, bottom: 10,left: 10,right: 10),
        color: Colors.yellow,
        child: 
      Container(
        height: 200,
        width: 200,
        color: Colors.red,
      ),
      ),
      ),
    );
  }
}