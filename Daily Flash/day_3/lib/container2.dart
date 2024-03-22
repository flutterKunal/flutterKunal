import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});


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
          decoration: const BoxDecoration(
            image: DecorationImage(image:NetworkImage("https://img.pikbest.com/png-images/20211129/vector-vintage-golden-title-border-frame-for-design-elements_6179435.png!w700wp"))
          ),
          height: 300,
          width: 300,
          child:  Center(
            child:  Text("Hello",style: TextStyle(color: Colors.amber,fontWeight: FontWeight.w700,fontSize: 30),)
          )
        ),
      ),
    );
  }
}