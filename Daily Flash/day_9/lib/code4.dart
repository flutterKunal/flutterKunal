import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:   AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body: Center(
    child: 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    SizedBox(
      height: 70,
      width: 200,
      child:
    TextField(
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hoverColor: Colors.blue,
        hintText: "Enter your name",
        hintStyle: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        fillColor: Colors.purple,
        filled: true
      ),
      cursorColor: Colors.amber,
    )
    ),
    ElevatedButton(onPressed: (){},
     child:
     const Text("Subimt")
     )
      ]
    )
  )
    );
  }
}