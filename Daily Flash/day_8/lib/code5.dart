import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{

   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body: ListView.builder(
    itemCount: 10,
    itemBuilder:(context, index) =>
    Container(
      height: 100,
      padding: const EdgeInsets.only(bottom: 20,top: 20,left: 40,right: 40),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black)
      ),
      child: 
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Title"),
              SizedBox(height: 10,),
              Text("Give some description here")
            ],
          ),
          // const SizedBox(width: 10,),
          Container(
            height:60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.blue
            ),
            child: 
            const Icon(Icons.add,color: Colors.white,)
          )
        ],
      ),
    )
  )
    );
  }
}