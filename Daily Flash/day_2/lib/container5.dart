import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State{
  String text = "Click me!!";
  Color containerColor = Colors.red;

  void container(){
    setState(() {
      text ="Container Tapped!";
      containerColor = Colors.blue;
    });
  }

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
        child: Container(
          height: 250,
          width: 250,
          color: containerColor,
          alignment: Alignment.center,
          child: 
          ElevatedButton(
            onPressed: (){
            container();
          },
          child:Text(text),
        ),
      ),
      )
    );
  }
}