import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget{
  const Assignment2({super.key});
  
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar", style: TextStyle(color: Colors.white,),),
       centerTitle: true,
        actions: const [
          Icon(Icons.search,
         color: Colors.white,),
        SizedBox(width: 20,),
          Icon(Icons.message,
          color: Colors.white,)
        ],
        backgroundColor: Colors.black,
      ),
    );

  }
}