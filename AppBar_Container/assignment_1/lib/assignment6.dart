import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget{
  const Assignment6({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),),
      backgroundColor: Colors.black,
      ),
      
      body: Center(
        child: 
      SingleChildScrollView(
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            color: Colors.amber[300],
          ),
          const SizedBox(height: 100,),
          Container(
            height: 200,
            width: 200,
            color: Colors.amber[400],),
          const SizedBox(height: 100,),
          Container(
            height: 200,
            width: 200,
            color: Colors.amber,)
        ],
      ),
      ),
      ),
      );
  }
}
