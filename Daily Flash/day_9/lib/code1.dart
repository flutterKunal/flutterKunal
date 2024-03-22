import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{
  List color = [
    Colors.amber,Colors.blue,Colors.red,Colors.brown,Colors.grey
  ];

   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body: 
        ListView.builder(
          scrollDirection: Axis.horizontal,
    itemCount: color.length,
    itemBuilder:(context, index) => 
        Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 20,),
            Container( 
              height: 100,
              width: 60,
              color: color[index],
            ),
              ]
            )
          ],
        )
        )  
    );
  }
}