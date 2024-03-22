import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{

   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
    title: const Text("Hello",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500),),
            backgroundColor:const  Color.fromARGB(221, 11, 3, 3),
            actions: const [
              Icon(Icons.shopping_cart_rounded,color: Colors.white,),
               SizedBox(width: 10,)              
            ],
            leading: const Icon(Icons.menu_rounded,color: Colors.white,),
  ),
  body: Container(
    color: const Color.fromARGB(221, 11, 3, 3),
    padding: const EdgeInsets.all(20),
    child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const  Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: 
          Column(
            children: [            
// 1st Text
       SizedBox(
        child: Text("It's A Great Day For Coffee",
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 30
        ),),
      ),
// SearchBar
       SizedBox(
        height: 60,
        child:
       TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded,color:Colors.white),
          hintText: "Search your favourite Coffee",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 226, 80, 129),
            fontWeight: FontWeight.w200
          ),
          fillColor: Color.fromARGB(255, 52, 42, 39),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))
          )
        )
      ),
      ),
        SizedBox(height: 15,),

        Row(
          children: [
            Text("Hot Coffee",
            style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w400,
            fontSize: 15
          ),),
          
          SizedBox(width: 15,),
          Text("Cold Coffee",
            style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 15
          ),)
          ],
        )
            ]
          )
        ),
        const SizedBox(height: 15),

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
         Row(
          children: [
            Container(
              height: 200,
              width: 350,
              child: 
              Image.asset("images/img2.jpg")
            ),
            const SizedBox(width: 10,),
            
             Container(
              height: 200,
              width: 350,
              color: Colors.white,
            ),
            const SizedBox(width: 10,),
             Container(
              height: 200,
              width: 350,
              color: Colors.white,
            ),
            const SizedBox(width: 10,),
             Container(
              height: 200,
              width: 350,
              color: Colors.white,
            ),
            const SizedBox(width: 10,),
             Container(
              height: 200,
              width: 350,
              color: Colors.white,
            ),
            const SizedBox(width: 10,),
        ],),
      )
    ],),
  )
    );
  }
}