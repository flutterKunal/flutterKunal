import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() =>_MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App",
        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 46, 14, 3),
        centerTitle: true,
      ),
       floatingActionButton:FloatingActionButton(
          onPressed: (){},
        splashColor: Colors.purple,
        child: const SizedBox(
          height: 50,
          width: 100,
          child: 
          Icon(Icons.arrow_forward_ios_outlined)
        ) ,),
      
    );
    
  }
}