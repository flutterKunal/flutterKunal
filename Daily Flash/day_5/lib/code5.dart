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
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network("https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg",
            height:150,width: 150,),
            const Spacer(),

            Container(
              height: 150,width: 150,color: Colors.red,
            ),
            const SizedBox(height: 10,),

             Container(
              height: 150,width: 150,color: Colors.blue,
            ),
            const SizedBox(height: 10,),
          ],
        )
      )
    );
  }
}