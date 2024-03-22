import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
return Scaffold(
  appBar: AppBar(
    title: const Text("My App",
    style: TextStyle(fontWeight: FontWeight.w600,
    fontSize:35,color: Colors.white),),
    backgroundColor: const Color.fromARGB(255, 46, 37, 34),
    centerTitle: true,
  ),

  body: Center(
    child: 
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.black,blurRadius: 8,offset: Offset(0,10))
            ],
            color: const Color.fromARGB(255, 1, 127, 5),
            border: Border.all(color: const Color.fromARGB(255, 97, 7, 7))
          ),
        ),

        const SizedBox(width: 100,),

         Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(color: Colors.black,blurRadius: 20,offset: Offset(0, 10))
            ],
            color: Colors.amber,
            border: Border.all(color: const Color.fromARGB(255, 97, 7, 7))
          ),
        )
      ],
    )
  )
);
   }
}