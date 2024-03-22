import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App",
        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 40,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.brown[900],
      ),
      body: Center(
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
 
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),

             Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ),

             Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ],
        )
      )
    );
  }
}