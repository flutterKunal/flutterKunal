import 'package:flutter/material.dart';

class DecorateContainer extends StatelessWidget{
  const DecorateContainer({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Decoration"),
        centerTitle: true,
      ),
      body: Center(child: 
      Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 5)
          ),
      ),
      ),
    );
  }
}