import 'package:flutter/material.dart';

class ListView2 extends StatefulWidget{
  const ListView2({super.key});

  @override
  State createState() => _ListViewState();
}
class _ListViewState extends  State{

  List img = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/09/07/11/32/photo-manipulation-3660491_640.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9YYh5Fk1u9VsWWr1MhkyQeOzeNbtnnMO96g&usqp=CAU",
    "https://media.istockphoto.com/id/921893114/photo/athirappilly-falls.jpg?s=612x612&w=0&k=20&c=mDL2tjlFj-nNLxLKqzwCTIrl1pYNq4ulFHXK9GUirVQ="
  ];
  int i = 0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (context , index) => Container(
          height: 300,
          width: 300,
          margin: const EdgeInsets.all(10),
          child: 
          Image.network(img[index]),
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            img[i];
          });
        },
        child: const Icon(Icons.skip_next_sharp),
      ),
    );
  }
}