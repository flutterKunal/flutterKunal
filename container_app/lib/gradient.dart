import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget{
  const GradientBox({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shadow"),
        centerTitle: true,
      ),
      body: Center(child: 
      Container(
        height: 300,
        width: 300,
        decoration : BoxDecoration(
          //color: Colors.amber,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.blue,width: 5),
          gradient: const LinearGradient(
            stops: [0.0,1],
            colors: [Colors.red,Colors.black]),
        )
      ),
      ),
    );
  }
}