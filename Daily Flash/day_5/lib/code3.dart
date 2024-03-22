import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.network("https://prompti.ai/wp-content/uploads/2023/07/pcboi2.png"),
            ),
            const SizedBox(height: 20,),

            Container(
              height: 35,
              width: 130,
              padding: const EdgeInsets.all(5),
              decoration:  BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                   BoxShadow(color: Colors.black,blurRadius: 9,offset: Offset(3, 3))
                ],
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                border: Border.all(color: Colors.yellow,)
              ),

              child: const Text("Kunal Dhurpate",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16
              ),),
            )
          ],
        ),
      )
    );
  }
}