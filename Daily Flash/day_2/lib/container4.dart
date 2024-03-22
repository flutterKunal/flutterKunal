import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar",
      style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 54, 23, 12),
      ),
      body: Center(
        child: 
        Container(
          height: 100,
          width: 260,
          decoration: BoxDecoration(
            color: Colors.grey[350],
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),bottomRight:  Radius.circular(25)),
            border: Border.all(color: const Color.fromARGB(255, 224, 47, 35))
          ),
          padding: const EdgeInsets.only(top: 5,left: 20),
          child: const Text("Kunal Dhurpate",
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
        ),
      ),
    );
  }
}