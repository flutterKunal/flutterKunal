import 'package:flutter/material.dart';

class MarginContainer extends StatelessWidget{
  const MarginContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Margin"),
        centerTitle: true,
      ),
      body: Center( child: 
      Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: 
      Container(
       margin: const EdgeInsets.only(top: 10, bottom: 10,left: 10),
        color: Colors.red,
      ),
      ),
      ),
    );
  }
}