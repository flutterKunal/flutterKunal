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
      body:Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 235,
              width: 350,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15),bottomRight: Radius.circular(15)),
                image: DecorationImage(image: NetworkImage("https://www.southernliving.com/thmb/3x3cJaiOvQ8-3YxtMQX0vvh1hQw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2652401_QFSSL_SupremePizza_00072-d910a935ba7d448e8c7545a963ed7101.jpg"))
              ),
              // child: 
              // Image.network("https://www.southernliving.com/thmb/3x3cJaiOvQ8-3YxtMQX0vvh1hQw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/2652401_QFSSL_SupremePizza_00072-d910a935ba7d448e8c7545a963ed7101.jpg"),
              
            ),
            const SizedBox(height: 20,),

            ElevatedButton(onPressed: (){}, 
            style:const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(250,70)),backgroundColor: const MaterialStatePropertyAll(Colors.purple)),
            
            child:
            const Text("Add To Cart",
            style: TextStyle(color: Colors.white),)
             )
          ],
        )
      )
    );
  }
}