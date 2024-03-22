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
      backgroundColor: const Color.fromARGB(255, 54, 23, 12),
      ),
      body:SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20,),
                border: Border.all(color: Colors.red,width:2)
              ),
              child: const Text("Container",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
    );
    }
}