import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("My App",
    style: TextStyle(fontWeight: FontWeight.w600,
    fontSize:35,color: Colors.white),),
    backgroundColor: const Color.fromARGB(255, 46, 37, 34),
    centerTitle: true,
  ),

  body: Center(
    child: 
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
        ),

        Container(
          height: 80,
          width: 80,
          color: Colors.brown,
        ),

        Container(
          height: 70,
          width: 80,
          color: Colors.grey,
        ),
      ],
    )
  ),
);

    }
  }
