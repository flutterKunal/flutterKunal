import 'package:flutter/material.dart';

class Shadow extends StatelessWidget{
  const Shadow({super.key});

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
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20),),
          border: Border.all(color: Colors.blue,width: 5),
          boxShadow: const[
            BoxShadow(
              color: Colors.purple,offset: Offset(30, 30),blurRadius: 1
            ),
            BoxShadow(
              color: Colors.red,offset: Offset(20, 20),blurRadius: 1
            ),
            BoxShadow(
              color: Colors.green, offset: Offset(10, 10), blurRadius: 1
            )
          ]
        )
      ),
      ),
    );
  }
}