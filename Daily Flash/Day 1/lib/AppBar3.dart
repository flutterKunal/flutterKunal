import 'package:flutter/material.dart';

class AppBar3 extends StatelessWidget{
  const AppBar3({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title: const Text("App Bar",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),),
        backgroundColor: const Color.fromARGB(255, 60, 29, 17),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10))
          ) ,
        ),
      
    );
  }
}