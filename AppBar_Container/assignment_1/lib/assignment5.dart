import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child:
        SingleChildScrollView(
        child: Row(children: [
        const Spacer(),
        Image.asset("assets/images/download.jpeg"),
        const Spacer(),
        Image.asset("assets/images/download.jpeg"),
        const Spacer(),
        Image.asset("assets/images/download.jpeg"),
        
      ],),),),
    );
  }
}