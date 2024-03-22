import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScreen extends StatefulWidget{
  const MyScreen({super.key});

  @override
  State createState() => _MyScreenState();
}

class _MyScreenState extends State{

  @override
  Widget build(BuildContext context){

    return  Scaffold(
      backgroundColor: const Color.fromRGBO(228, 205, 225, 1),
      body: Column(children: [
      Container(
        padding: const EdgeInsets.all(10),
        // color: const Color.fromRGBO(143, 143, 143, 1),
        child:
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
         const Row(
            children: [
              Icon(Icons.menu_sharp,size: 30,weight: 20,),
              Spacer(),
              Icon(Icons.notifications_none,size: 30,)
            ],
          ),
          const SizedBox(height: 10,),

             Text("Welcome to New",
             style:GoogleFonts.jost(
              fontWeight:FontWeight.w300,
              fontSize:26.98,
              color:const Color.fromRGBO(0, 0, 0, 1))),
            Text("Educorse",
            style:GoogleFonts.jost(
              fontWeight:FontWeight.w700,
              fontSize:37,
              color:const Color.fromRGBO(0, 0, 0, 1))),
          
         const SizedBox(height: 10,),

         TextField(
          decoration: InputDecoration(
            hintText: "Enter Your Keyword",
            hintStyle: GoogleFonts.inter(
              fontWeight:FontWeight.w400,
              fontSize:14,
              color:const Color.fromRGBO(143, 143, 143, 1)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(28.5)),
              suffixIcon: const Icon(Icons.search),
              fillColor: const Color.fromRGBO(255, 255, 255, 1),
              filled: true
          ),
         ),
         const SizedBox(height: 10,),
        ])),

         Expanded(child: 
         Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)),
            color: Color.fromRGBO(255, 255, 255, 1) ),
          
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text("Course For You",
              style:GoogleFonts.jost(
              fontWeight:FontWeight.w500,
              fontSize:18)),
              const SizedBox(height:10),

              Row(children: [
                  Container(
                  height: 242,
                  width: 190,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: const LinearGradient(
                      colors:[Color.fromARGB(197, 4, 98, 1),Color.fromRGBO(80, 3, 112, 1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                      ),
                      
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("UX Designer from Scratch",
                  style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:17,color:const Color.fromRGBO(255, 255, 255, 1)),),
                   const SizedBox(height: 10,),
                Image.asset("images/img1.png"),
              ])),

              const SizedBox(width: 10,),

                Container(
                  height: 242,
                  width: 190,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: const LinearGradient(
                      colors:[Color.fromARGB(197, 4, 98, 1),Color.fromRGBO(80, 3, 112, 1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                      ),
                      
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("UX Designer from Scratch",
                  style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:17,color:const Color.fromRGBO(255, 255, 255, 1)),),
                  // Text(" Scratch",
                  //  style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:17,color:const Color.fromRGBO(255, 255, 255, 1)),),
                   const SizedBox(height: 10,),
                Image.asset("images/img1.png"),
              ]))
              ],),
              const SizedBox(height: 10,),
              Text("Course By Category",
              style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:18,),),
              const SizedBox(height: 10,),

              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(25, 0, 56, 1)),
                        child: Image.asset("images/icon1.png"),
                      ),
                      const SizedBox(height: 10,),
                      Text("UI/UX",
                      style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:14,color:const Color.fromRGBO(0, 0, 0, 1)),)
                    ],
                  ),
                  const SizedBox(width: 40,),

                  Column(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(25, 0, 56, 1)),
                        child: Image.asset("images/icon2.png"),
                      ),
                      const SizedBox(height: 10,),
                      Text("VISUAL",
                      style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:14,color:const Color.fromRGBO(0, 0, 0, 1)),)
                    ],
                  ),
                  const SizedBox(width: 20,),

                  Column(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(25, 0, 56, 1)),
                        child: Image.asset("images/icon3.png"),
                      ),
                      const SizedBox(height: 10,),
                      Text("ILLUSTRATION",
                      style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:14,color:const Color.fromRGBO(0, 0, 0, 1)),)
                    ],
                  ),
                  const SizedBox(width: 20,),

                  Column(
                    children: [
                      Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
                        color:const Color.fromRGBO(25, 0, 56, 1)),
                        child: Image.asset("images/icon4.png"),
                      ),
                      const SizedBox(height: 10,),
                      Text("PHOTO",
                      style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:14,color:const Color.fromRGBO(0, 0, 0, 1)),)
                    ],
                  ),
                ],
              )
            ]
          )
         ),
         )
      ])
    );
  }
}