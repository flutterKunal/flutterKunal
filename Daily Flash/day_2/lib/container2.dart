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
      body: Container(
        alignment: Alignment.center,
        child: Container(
          height: 100,
          width: 100,
          decoration:  BoxDecoration(
            color: Colors.amber[100],
            border: const Border(left:BorderSide(width:5,color:Colors.red)),
          ),
          padding: const EdgeInsets.all(30),
          child: const Center(
            child:
             Text("Hello",
             style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),),
          ),
        ),
        ),
    );
  }
}