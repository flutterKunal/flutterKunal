import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState() =>_MyAppState();
}

class _MyAppState extends State{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App",
        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 46, 14, 3),
        centerTitle: true,
      ),
      body: Center(child: 
      ElevatedButton(onPressed: (){},
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.yellow),
        shadowColor: MaterialStatePropertyAll(Colors.blue,),
        fixedSize: MaterialStatePropertyAll(Size(200, 200)),
        shape: MaterialStatePropertyAll(
          CircleBorder(
            side: BorderSide(color: Colors.red,width: 3)))
        
      ),
       child:const Text("Button",
       style: TextStyle(color: Colors.white),))
      ,),
    );
  }
}