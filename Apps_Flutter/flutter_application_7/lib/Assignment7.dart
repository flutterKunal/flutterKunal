import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget{
  const Assignment7({super.key});
  @override
  State<Assignment7> createState() => _Assignment7State();
}
class _Assignment7State extends State <Assignment7>{+
  int? selectedIndex = 0;
  //List of images
  final List<String> imageList = ['https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk=',
                                    'https://thumbs.dreamstime.com/b/three-mercedes-benz-g-wagon-cars-road-257848150.jpg'];
  void showNextImage(){
    setState((){
      selectedIndex = selectedIndex! + 1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title : const Text("Display Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Image.network(
              imageList[selectedIndex!],
              width : 300,
              height: 300,
            ),
            const SizedBox(
              height:20,
            ),
            ElevatedButton(
              onPressed:showNextImage,
              child:const Text("Next"),
            ),
            const SizedBox(height:20),
            ElevatedButton(
              onPressed:(){
                setState((){
                  selectedIndex =0;
                });
              },
              child: const Text("Reset")
              
            ),
          ],
        ),)
      );
  }
}