import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoListApp extends StatefulWidget{
  const ToDoListApp({super.key});

  @override
  State createState() =>_ToDoListState();
}

class _ToDoListState extends State{

  List colorList =[
     const Color.fromRGBO(250, 232, 232, 1),
     const Color.fromRGBO(232,232,250,1),
     const Color.fromRGBO(250,249,232,1),
     const Color.fromRGBO(250,232,250,1),
     const Color.fromRGBO(250,232,232,1),  
  ];
  TextEditingController daetController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void bottomSheet(){
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return  Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: 
          Column(
            children: [
              const  SizedBox(height: 10,),
              Text("Create Task",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
                fontSize: 22,)),

                const SizedBox(height: 10,),

                TextField(
                controller: titleController,
                decoration:  InputDecoration(
                  labelText: "Title",
                  labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 12,color:const Color.fromRGBO(0, 0, 0, 0.7)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  hintText: "Enter title",
                  hintStyle: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.7)
                  ),
                  border:  OutlineInputBorder(
                    borderSide:  const BorderSide(
                      color: Colors.purpleAccent
                    ),
                    borderRadius: BorderRadius.circular(5)
                  )
                ),
                ),

                const SizedBox(height: 12,),

                TextField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 12,color:const Color.fromRGBO(0, 0, 0, 0.7)),
                    hintText: "Write your descroption",
                    hintStyle: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.7)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color:Colors.purpleAccent),
                      borderRadius: BorderRadius.circular(5)
                    )
                  )
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    controller: daetController,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: "Date",
                      labelStyle: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 12,color:const Color.fromRGBO(0, 0, 0, 0.7)),
                      hintText: "dd/mm/yy",
                      hintStyle: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromRGBO(0, 0, 0, 0.7)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1),
                    )
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.purpleAccent
                    ),
                    borderRadius: BorderRadius.circular(5)
                  ),
                    ),
                  ),

                  const Spacer(),

                  SizedBox(
                    height: 50,
                    width: 300,
                    child:
                   ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148,1),
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  child:
                   Text("Submit",
                  style: GoogleFonts.inter(fontWeight: FontWeight.w700,fontSize: 20,color: const Color.fromRGBO(255, 255, 255, 1)),)
                  ),),

                  const SizedBox(height:10)                  
            ],
          )
          );
      }
    );
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  Text("To-Do List",
      style: GoogleFonts.quicksand(fontSize: 26,fontWeight: FontWeight.w700,color: const Color.fromRGBO(255, 255, 255, 1)),
      ),
      centerTitle: true,
      backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: 
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context , index) {

            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 15
              ),
              child: 
              Container(
              decoration:  BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color:colorList[index % colorList.length],
              boxShadow: const[
                BoxShadow(
                  offset: Offset(0,10),
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 10,
                ),
              ]
              ),
              child:
              Padding(
                padding: const EdgeInsets.all(10),
                child:
              Column(
                children: [
                Row(
                  children: [
                    Container(
                      height: 52,
                      width:  52,
                      decoration:const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Image.network("https://cdn-icons-png.flaticon.com/512/8019/8019152.png"),
                    ),
                    const  SizedBox(width: 20,),
                    Expanded(
                      child: 
                    Column(
                      children: [
                        Text("Lorem Ipsum is simply setting industry",
                        style: GoogleFonts.quicksand(fontSize: 12,fontWeight: FontWeight.w600,color: const Color.fromRGBO(0, 0, 0, 1),),
                        ),
                        const SizedBox(height: 10,),
                        Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 10,color: const Color.fromRGBO(84, 84, 84,1),),
                        )
                    ],))
                  ],
                ),
                const SizedBox(height: 10,),

                Row(
                  children: [
                    Text("10 July 2023",
                    style: GoogleFonts.quicksand(fontWeight: FontWeight.w500,fontSize: 10,color: const Color.fromRGBO(132, 132, 132,1),),),
                    const Spacer(),

                    GestureDetector(
                      onTap: () {
                        
                      },
                      child:
                      const Icon(Icons.edit_outlined,color: Color.fromRGBO(0, 139, 148, 1),)
                    ),

                   const SizedBox(width: 10,),
                   
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child:
                   const Icon(Icons.delete_outline,color: Color.fromRGBO(0, 139, 148, 1),)
                    ),
                  ],
                )
              ],)))
            );
          }
          )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          bottomSheet();
        },
        child: const Icon(Icons.add,
        size: 50,
        color: Colors.white,
        ),
        ),
    );
  }
}