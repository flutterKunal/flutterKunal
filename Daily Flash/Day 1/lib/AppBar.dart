import 'package:flutter/material.dart';

class AppBar1 extends StatelessWidget{
  const AppBar1({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,))
        ],
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Text("App Bar",
        style:TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
        backgroundColor: const Color.fromARGB(255, 52, 0, 0),
        centerTitle: true,
      ),
    );
  }
}