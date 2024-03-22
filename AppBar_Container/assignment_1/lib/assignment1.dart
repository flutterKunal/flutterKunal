import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});
 @override
 Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title : const Text("AppBar",style: TextStyle(color: Colors.white),),
      actions: const [
        Icon(Icons.search,
        color: Colors.white,),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.menu_book_rounded,
        color: Colors.white,),
      ],
      backgroundColor: Colors.black,
    ),
  );
 }
 } 
