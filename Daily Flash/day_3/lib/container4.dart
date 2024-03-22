import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  
  @override
  State createState() => _MyAppState();
}
class _MyAppState extends State{
  Color clr =Colors.red;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar",
      style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.white),),
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 48, 26, 18),
      ),
      body: Center(
        child: 
        Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                  blurRadius: 4,
                  offset: Offset(0, -3))
            ],
            color: Colors.white
          )
          ),
        ),
      
    );
  }
}