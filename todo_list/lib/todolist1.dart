import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State createState() => _ToDoListstate();
}

class _ToDoListstate extends State{
  final TextEditingController _namesTextEditingController1 =TextEditingController();
  final FocusNode _nameFocusNode1 = FocusNode();
  final TextEditingController _namesTextEditingController2 =TextEditingController();
  final FocusNode _nameFocusNode2 = FocusNode();
  final TextEditingController _namesTextEditingController3 =TextEditingController();
  final FocusNode _nameFocusNode3 = FocusNode();
  String? name ;
  List colorList =[
     const Color.fromRGBO(250, 232, 232, 1),
     const Color.fromRGBO(232,232,250,1),
     const Color.fromRGBO(250,249,232,1),
     const Color.fromRGBO(250,232,250,1),
     const Color.fromRGBO(250,232,232,1),  
  ];
  List<Map> dataList = [{}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),

        title:  Text("Text Field",
        style: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontSize: 26,
          color: Colors.white
          ),),
      ),

      body:  Center(
        child:
        Column(
          children: [
            Column(
             children: [
               const SizedBox(height: 20,),
                SizedBox(
                 height: 45,
                 width:400,
                 child:
               TextField(
               controller: _namesTextEditingController1,
               focusNode: _nameFocusNode1,
               onSubmitted: (value) => name = value,
               decoration:  InputDecoration(
                 hintText: "Enter Company",
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
                   borderSide:  const BorderSide(
                     color:  Colors.blue,
                     ),
                     ),
                 focusedBorder:const OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
               ),
             ),),
            
             const SizedBox(height: 20,),
            
                SizedBox(
                 height: 45,
                 width:400,
                 child:                
               TextField(
               controller: _namesTextEditingController2,
               focusNode: _nameFocusNode2,
               onSubmitted: (value) => name = value,
               decoration:  InputDecoration(
                 hintText: "Enter Company",
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
                   borderSide:  const BorderSide(
                     color:  Colors.blue,
                     ),
                     ),
                 focusedBorder:const OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
               ),
             ),),
            
             const SizedBox(height: 20,),
               
                SizedBox(
                 height: 45,
                 width:400,
                 child:
               TextField(
                 controller: _namesTextEditingController3,
               focusNode: _nameFocusNode3,
               onSubmitted: (value) => name = value,
                 decoration:  InputDecoration(
                 hintText: "Enter Company",
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(5.0),
                   borderSide:  const BorderSide(
                     color:  Colors.blue,
                     ),
                     ),
                 focusedBorder:const OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.black),
                 ),
               ),                
             ),
               ),
            
            
               const SizedBox(height: 20,),
            
               ElevatedButton(
                 
                 onPressed: () {
                 //dataList.addAll()
               }, child: 
               const Text("submit"),
               
               
               )
             ],
                        ),
           /* Column(
              children: [
          ListView.builder(
            itemCount: colorList.length,
            itemBuilder: (context, index) {
              return Container(
                height: 112,
                width: 500,
                color: colorList[index],
                decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            ),
                 child: 
                 Row(
                  children: [
                                     
                        Container(
                          height: 52,
                          width: 52,
                          child: 
                             Text("hi")
                        ),
                  ],
                 )
              );
                
            }
            ),
              ]
            )*/
        ]
        ),
        ),
      );
  }
}
