import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State{

  Color color1 = Colors.white;
  Color color2 =Colors.white;
  Color color3 = Colors.white;


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
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Container 1
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: color1,
                border: Border.all(color: Colors.black,width: 3)
              ),
              child: GestureDetector(
                onTap: () => setState(() {
                  color1=Colors.red;
                    color2 = Colors.white;
                    color3=Colors.white;
                })
              ),
            ),

            //Container 2
             Container(
               height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: color2,
                border: Border.all(color: Colors.black,width: 3)
              ),
              child: GestureDetector(
                onTap:() => {
                  setState(() {
                    color2=Colors.red;
                    color1 = Colors.white;
                    color3=Colors.white;
                  })
                },
              )
            ),

            //Container 2
             Container(
               height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: color3,
                border: Border.all(color: Colors.black,width: 3)
              ),
              child: GestureDetector(
                onTap: () => setState(() {
                  color3=Colors.red;
                    color1 = Colors.white;
                    color2=Colors.white;
                })
              ),
            )
          ],
        ),
      )
    );
  }
}