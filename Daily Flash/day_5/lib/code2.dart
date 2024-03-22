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
          children: [
            const SizedBox(height: 30,),
            Container(
              height: 100,
              width: 100,
              child: 
              Image.network("https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-1080x675.jpg")
            ),
            const SizedBox(height: 20,),

             Container(
              height: 100,
              width: 100,
              child: 
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQphO1iGa3a8wJpd43zAbREvXa8q4DmAIKww&usqp=CAU")
            ),
            const SizedBox(height: 20,),

             Container(
              height: 100,
              width: 100,
              child: 
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRotpwzCwaTSqqgtGOyUw-AlBY8htC-3hterw&usqp=CAU")
            ),
          ],
        )
      )
    );
  }
}