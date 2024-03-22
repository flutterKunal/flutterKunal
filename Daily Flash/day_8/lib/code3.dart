import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body:Center(
    child:
    Container(
      alignment: Alignment.center,
      height: 150,
      width: 450,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      Container(
        height: 150,
        width: 0.1,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
      ),

      Container(
        height: 150,
        width: 0.1,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.black)
        ),
      ),
        ]
      )
    )
  )
  );
   }
}