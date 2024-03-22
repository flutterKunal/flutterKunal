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
        Column(
          children: [
         const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Happy Independance Day",
         style: TextStyle(fontSize: BorderSide.strokeAlignCenter,fontStyle:FontStyle.normal, color: Colors.orange),),],),
         
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 300,
              color: Colors.orange,
            )
          ]
          ,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              child: Image.network("https://www.shutterstock.com/image-vector/blue-ashoka-wheel-indian-symbol-600nw-417259699.jpg"),
            )
          ]
          ,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 300,
              color: Colors.green,
            )
          ]
          ,),
              ],
            ),
        ],
        ),
        ],),      
    ),
    );
  }
}
