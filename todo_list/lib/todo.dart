import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TodoFigma extends StatefulWidget{
  const TodoFigma({super.key});

  @override
  State createState() => _TodoFigmaState();
}

class  _TodoFigmaState extends State {
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

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ToDo List",
        style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.w600,
        color: Colors.amber),),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
      child: 
      ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index){
          return Container(
            height: 112,
            width: 330,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: colorList[index],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  children: [
                 const SizedBox(width: 10,),
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:const Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: 
                      Image.asset("image/Vector.png"),
                    ),
                    const SizedBox(width: 15,),
                    Expanded(child:
                    Column(
                      children: [
                        Text("${textList[index]["Title"]}",
                        style: GoogleFonts.quicksand(fontSize: 12,fontWeight: FontWeight.w600,),
                        ),
                        const SizedBox(height: 10,),
                        
                        Text("${textList[index]["Text"]}",
                        style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 10)
                        )
                      ],
                    )),
                    const SizedBox(width: 10,)
                ]),
                 Row(
                  children: [
                    const SizedBox(width: 10,),
                     Text("10 July 2023",
                     style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 10)),
                    const  Spacer(),
                    const Icon(Icons.edit_outlined,size: 25,color: Color.fromRGBO(0, 139, 148, 1), ),
                    const SizedBox(width: 10,),
                    const Icon(Icons.delete_outline,size: 25,color: Color.fromRGBO(0, 139, 148, 1),),
                    const SizedBox(width: 10,)
                  ],
                )
                  ],
                )
              
          );
        }
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context ){
              return  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Create Task",
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w600,fontSize: 22),
                  ),

                  const SizedBox(height: 10,),
                  
                  const TextField(
                    decoration:  InputDecoration(
                      labelText: "Title",
                      labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: "Enter Title",
                      hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                  const SizedBox(height: 20,),

                  const TextField(
                    decoration:  InputDecoration(
                      labelText: "Description",
                      labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: "Simply dummy text of the printing and  has been the typesetting Lorem Ipsum has been the industry.",
                      hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                    
                  ),
                  const SizedBox(height: 20,),

                  
                  const TextField(
                    decoration:  InputDecoration(
                      labelText: "Date",
                      labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: "EnterDate",
                      hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color:Color.fromRGBO(0, 0, 0, 0.7)),
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor:const Color.fromRGBO(0, 139, 148, 1)),


                  child:
                  Expanded(child: 
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: 
                   Center(
                     child: Text("Submit",
                           style: GoogleFonts.inter(fontWeight: FontWeight.w700,fontSize: 20,color: const Color.fromRGBO(255, 255, 255, 1),),
                           ),
                   )))
                  ),
                  const SizedBox(height: 10,)
                ],
                
              );
            }
          );
        },
        child: 
        const Icon(Icons.add),
      ),
    );
  }
}



