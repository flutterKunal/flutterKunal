import 'package:flutter/material.dart';

class DisplayImg extends StatefulWidget{
  const DisplayImg({super.key});

  @override
  State createState() => _DisplayImgState();
}

class _DisplayImgState extends State<DisplayImg>{
  List<String> imgList =["https://static.toiimg.com/thumb/msid-79305644,width-1280,height-720,resizemode-4/79305644.jpg",
                         "https://cdni.autocarindia.com/ExtraImages/20200902062717_Mercedes-Benz-S-Class-2021-front.jpg",
                         "https://s3-prod-europe.autonews.com/s3fs-public/Koenigsegg%20Gemera%20web.jpg",
                         "https://static.toiimg.com/thumb/msid-79305644,width-1280,height-720,resizemode-4/79305644.jpg"];
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
            margin: const EdgeInsets.all(10),
            child:Image.network(imgList[index])
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
      child: 
      const Icon(Icons.skip_next),
      ),
      );
  
  }
}