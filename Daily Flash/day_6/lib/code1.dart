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
      body:Center(
        child: 
        Column(
          children: [
          Image.asset("0utput/pizza.jpg",height: 350,width: 350,),

          Container(
            padding: const EdgeInsets.all(25),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pizza",
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.black),),

                SizedBox(height: 20,),
                Text("Pizza is a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, vegetables, meat, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven. Pizza is one of the most popular foods in the world and is enjoyed in many different variations")
              ],
            ),
          )
        ],),
      )
    );
  }
}