import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{
  List<Map> data =[
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },
    {
      "image":"0utput/logo.jpeg",
      "text1":"Core2Web",
      "text2":"Biencaps",
      "text3":"Incubator"
    },

  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:   AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body: 
        ListView.builder(
    itemCount: 10,
    itemBuilder:(context, index) => Container(
      alignment: Alignment.center,
      height: 310,
      width: 700,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage("${data[index]["image"]}"))
      ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
            height:80,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage("${data[index]["text1"]}"))
      ),
      child: Text(data[index]["text1"]),
          ),
          Container(
                padding: const EdgeInsets.all(10),
            height: 80,
            width: 200,
                margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage("${data[index]["text2"]}"))
      ),
      child: Text(data[index]["text2"]),
          ),
          Container(
                padding: const EdgeInsets.all(10),
            height: 80,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: AssetImage("${data[index]["text3"]}"))
      ),
      child: Text(data[index]["text3"]),
          ),
            ],
          ),

          Container(
            height: 70,
            width: 70,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black)
            ),
            child : const Icon(Icons.keyboard_double_arrow_right_sharp)
          )
        ],
      ),
    )
        )
    );
  }
}