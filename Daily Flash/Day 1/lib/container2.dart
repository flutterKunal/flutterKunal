import 'package:flutter/material.dart';

class Container2 extends StatelessWidget{
  const Container2({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800)),
      centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(color: Colors.red,blurRadius: 10,spreadRadius: 5,)
                ]
              ),
            )
          ],
        )
      ]),
    );
  }
}