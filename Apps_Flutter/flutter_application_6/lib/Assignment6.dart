import 'package:flutter/material.dart';
class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});

@override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6>{
  bool box1Color = false;
  bool box2Color = true;

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(
      title: const Text("Color Box"),
      backgroundColor: Colors.blue,
      ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                  height :100,
                  width : 100,
                  color : box1Color? Colors.red : Colors.black,
                  ),
                  const SizedBox(
                    height : 20,
                  ),
                  //Box1 Button
                  ElevatedButton(
                    onPressed :(){
                      setState((){
                        box1Color = !box1Color;
                      });
                    },
                    child: const Text ("Color Box1"),
                  ),
                ],
              ),
              const SizedBox(
                width :20,
              ),
              // Box 2
              Column(
                children:[
                  Container(
                    height : 100,
                    width:100,
                    color : box2Color? Colors.blue:Colors.black,
                  ),
                  const SizedBox(
                    height : 20,
                  ),
              // Box2 Button
              ElevatedButton(
                onPressed: (){
                  setState((){
                    box2Color = !box2Color;
                  });
                },
                child : const Text("Color Box2"),
                ),
                const SizedBox(
                  width : 20,
                ),
                ],),
                const SizedBox(
                  width:20,
                ),
            ],
          ),
        ],
        ),
    ),
    );
  }
}