import 'package:flutter/material.dart';

class Container1 extends StatelessWidget{
  const Container1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("App Bar",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800)),
      centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
          Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.red,width: 5)
        ),
      )])
        ],
      )
    );
  }
}