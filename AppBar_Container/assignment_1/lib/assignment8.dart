import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget{
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Padding & Margin",
        style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
        backgroundColor: Colors.amber[800],
      ),

      body:
      Center(
        child:
        Container(
          color: Colors.red[900],
          child:
        Container( 
          height: 250,
          width: 250,
          color: Colors.amber[400],
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(30),
          child:
        Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b5/Baby.tux.sit-black-800x800.png",),
      ),
        ),
      ),
    );

  }

}