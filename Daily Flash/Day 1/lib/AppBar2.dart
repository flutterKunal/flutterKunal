import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget{
  const AppBar2 ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 15, 15),
        title: Text("App Bar",
        style:TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
        actions: [
          Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.add_a_photo_outlined,color: Colors.white,),
          SizedBox(width: 10,),
          Icon(Icons.notifications,color: Colors.white,),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}