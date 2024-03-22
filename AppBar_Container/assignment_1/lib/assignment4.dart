import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget{
  const Assignment4({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:Center( child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            color: Colors.orange,
          ),
          const SizedBox(width: 100,),
          Container(width: 150,height: 150,color: Colors.orange[400],)
        ],
      ),
      ),
    );
  }
}