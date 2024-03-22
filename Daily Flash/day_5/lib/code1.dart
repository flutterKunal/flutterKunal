import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget  build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information",
        style: TextStyle(fontWeight: FontWeight.w600,fontSize: 40,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.brown[900],
      ),
      body: Center(
        child: 
        Column(
          children: [
            const SizedBox(height: 20,),
            Image.network("https://prompti.ai/wp-content/uploads/2023/07/pcboi2.png",
            height: 250,
            width: 250,),
            const SizedBox(
              height: 20,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("Usernmae:",
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
            SizedBox(width: 5,),

            Text("Kunal Dattatray Dhurpate",
            style: TextStyle(fontWeight: FontWeight.w600,fontSize:16),)
            ],),

             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text("Mobile No:",
            style: TextStyle(fontWeight: FontWeight.normal,fontSize: 16),),
            SizedBox(width: 5,),

            Text("7588750224",
            style: TextStyle(fontWeight: FontWeight.w600,fontSize:16 ),)
            ],)
          ],
        ),
      ),
    );
  }
}