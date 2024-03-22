import 'package:flutter/material.dart';

class ListViewImg extends StatefulWidget{
  const ListViewImg({super.key});

  @override
  State createState() => _ListViewImgState();
}

class _ListViewImgState extends State<ListViewImg>{
  List<int> imgList =[];
  int count= 0;
  @override
  Widget build(BuildContext contexty){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 58, 74),
        title: const Text("ListViewImage App",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
      ),

      body : ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context , index){
          return Container(
            
            height: 60,
            color: Colors.orange,
            margin: const EdgeInsets.all(10),
            child:Text("${imgList[index]}")
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          imgList.add(++count);
        });
      },
      child:
      const Icon(Icons.skip_next),),
      );
  }
}