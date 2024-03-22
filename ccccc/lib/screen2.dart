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
    
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors:[ Color.fromRGBO(197, 4, 98, 1),Color.fromRGBO(80, 3, 112, 1)],
              begin: Alignment.topCenter,
              end:Alignment.bottomCenter),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),

                const Icon(Icons.arrow_back_rounded,
                size: 26,color:Color.fromRGBO(255, 255, 255, 1),),
                const SizedBox(height: 10,),

                Text("UX Designer From Scratch",
                style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:32.61,color:const Color.fromRGBO(255, 255, 255, 1)),),

                const SizedBox(height: 10,),
                Text("Basic guideline & tips & tricks for how to become a UX designer easily.",
                style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:16,color:const Color.fromRGBO(228, 205, 225, 1))),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: const Color.fromRGBO(0,82,178, 1),
                      border: Border.all(color: const Color.fromRGBO(255, 255, 255, 1))
                      ),
                      child: Image.asset("images/Group.png",color: const Color.fromRGBO(255, 255, 255, 1),),
                    ),
                    const SizedBox(width: 5,),

                    Text("Author:",
                    style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:16,color:const Color.fromRGBO(190, 154,197, 1)),),
                    const SizedBox(width: 5,),
                    Text("Jenny",
                    style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:16,color:const Color.fromRGBO(255, 255, 255, 1)),),

                    const SizedBox(width: 50,),
                    Text("4.8",
                    style: GoogleFonts.jost(fontWeight:FontWeight.w500,fontSize:16,color:const Color.fromRGBO(255, 255, 255, 1)),),
                    const Icon(Icons.star,color: Color.fromRGBO(255, 146, 0, 1),size: 16),

                    const SizedBox(width: 5,),

                     Text("(20 review)",
                    style: GoogleFonts.jost(fontWeight:FontWeight.w400,fontSize:16,color:const Color.fromRGBO(190, 154, 197, 1)),),
                  
                  ],
                )
              ],
            ),
          ),
          Expanded(child: 
                  Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    ),
                    color: Colors.amber),
                    child: const Column(
                      children: [
                        Text("Helgfbcvnbgfxhjk,l.;lkjhgvcvbnm,./,mnbvcvbnm,./nbnmbmnmnbftyuiopoiuytrtyuiop[lo")
                      ],
                    ),
                  ))
        ],
      ),
    );
  }
}