import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ToDoList extends StatefulWidget{
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListstate();
}

class _ToDoListstate extends State{

   List colorList =[
     const Color.fromRGBO(250, 232, 232, 1),
     const Color.fromRGBO(232,232,250,1),
     const Color.fromRGBO(250,249,232,1),
     const Color.fromRGBO(250,232,250,1),
     const Color.fromRGBO(250,232,232,1),  
  ];
  List<Map> textList = [
    {
      "Title": "Lorem Ipsum is simply setting industry.",
      "Text" : "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    },
    {
      "Title": "Lorem Ipsum is simply setting industry.",
      "Text" : "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    },
    {
      "Title": "Lorem Ipsum is simply setting industry.",
      "Text" : "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    },
    {
      "Title": "Lorem Ipsum is simply setting industry.",
      "Text" : "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    },
        {
      "Title": "Lorem Ipsum is simply setting industry.",
      "Text" : "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s"
    },
    ];
    bool flag = false;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.orange),),
        backgroundColor: Colors.grey,
      ),
      body:
         ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context , index) =>Column(
          children:[
            const SizedBox(height: 30),
         Container(
          height: 112,
          width: 385,
          decoration: BoxDecoration(
            boxShadow: const[BoxShadow(
              color: Color.fromARGB(255, 91, 64, 64),
              blurRadius: 3
            ),],
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: colorList[index]
          ),
          child: Row(
            children: [
              const SizedBox(width: 20,),
              SizedBox(
                width: 60,
                child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white
                    ),
                    child:
                    Image.asset("image/Vector.png"),
                  ),
                   const SizedBox(height: 10,),
                   SizedBox(
                    height:13,
                    width: 65,
                    child:
                   Text('10 July 2023',style: GoogleFonts.quicksand(fontSize: 10,fontWeight: FontWeight.w500),
                   ),)
                ],
              ),),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const  SizedBox(height: 10,),
                 SizedBox(
                  height:20,
                  width:243,
                  child:
                  Text("${textList[index]["Title"]}",
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w600,fontSize: 12),
                  ),),
                  const SizedBox(height: 7,),
                  SizedBox(
                    height:44,
                    width: 285,
                    child:
                  Text("${textList[index]["Text"]}",
                  
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 10),
                  )
                  ),
                  const SizedBox(height: 5,),
                  const Row(
                    children: [
                       SizedBox(width: 250,),
                      Icon(Icons.edit_outlined,size: 20,),
                        SizedBox(width: 5,),
                       Icon (Icons.delete_outline_outlined,size: 20)
                    ],
                  )                  
                ],               
              )
            ],
          ),
        )])
      ),
        
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          context: context,
         builder:(BuildContext context) {
           return  SizedBox(
            height: 400,
           child: Center(
            child:ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
             child:const Text("close") )
           ),);
         },);
      },
      backgroundColor: Colors.blue,
      child:
      const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}