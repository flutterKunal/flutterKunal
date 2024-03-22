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
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
            border: Border.all(color: Colors.blue,width: 3)
          ),
        )
      ),
    );
  }
}