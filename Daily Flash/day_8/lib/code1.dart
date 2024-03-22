import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("My App"),
    centerTitle: true,
  ),
  body: Container(
    margin: const EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 200,
              width: 150,
              color: Colors.green,
            ),
          ],
        ),
        Container(
          height: 150,
          color: Colors.red,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 150,
              color: Colors.blue,
            ),
          ],
        ),

      ],
    ),
  )
);
   }
}