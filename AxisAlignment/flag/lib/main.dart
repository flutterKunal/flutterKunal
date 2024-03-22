import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:
      Scaffold(
        appBar: AppBar(title:const Text("INDIA",style: TextStyle(fontStyle: FontStyle.normal,color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.amber,),
        body:
       Container(
        height: double.infinity,
        child:
        Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.orange,
            )
          ]
          ,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              child: Image.network("https://www.shutterstock.com/image-vector/blue-ashoka-wheel-indian-symbol-600nw-417259699.jpg"),
            )
          ]
          ,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 400,
              color: Colors.green,
            )
          ]
          ,),
        ],
        )

      ),
    ),
    );
  }
}
