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
    child: Container(
      height: 50,
      width:250,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15)
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.star,color: Colors.orange,size: 40,),
          Text("Rating 4.5",
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25),)
        ],
      ),
    )
  )
);
   }
}