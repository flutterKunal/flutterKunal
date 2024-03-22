import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  
  @override
  State createState() => _MyAppState();
}
class _MyAppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar",
      style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 48, 26, 18),
      ),
      body: Center(
        child: 
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(150),
            gradient: const LinearGradient(colors: [Colors.red, Colors.blue],stops: [0.5,0])
          ),
        )
      )
    );
  }
}