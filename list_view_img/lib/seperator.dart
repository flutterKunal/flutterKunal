import 'package:flutter/material.dart';

class CricketList extends StatefulWidget{
  const CricketList({super.key});
  
  @override
  State createState() => _CrickateListState();
}

class _CrickateListState extends State{
  List<List<String>> players = 
    [
[//t20
      "https://i0.wp.com/m.economictimes.com/thumb/msid-94097982,width-1600,height-900,resizemode-4,imgsize-33360/dubai-sept-08-ani-indias-virat-kohli-celebrates-his-century-during-the-asia-.jpg?strip=all",
      "https://crictoday.com/wp-content/uploads/2022/11/RishabhPant-cropped_0-scaled.jpg",
      "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202312/pti05-20-2023-000348a-4jpg-184655-16x9_1.jpg?VersionId=kpYi_5tpd8pz6RJH3QYxR_S7.xNPEs1o&size=690:388",
  ],

[//1d
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRChYIVnGsxAiuSD9KvKVsccr5HzzaCmdbKjA&usqp=CAU",//yuzi
      "https://crictoday.com/wp-content/uploads/2023/12/ezgif.com-gif-maker-2023-12-06T205846.302.webp",//rohit
      "https://imgeng.jagran.com/images/2023/nov/RJADJEA1700127903469.jpg"//jadeja
    ],
    [
      "https://images.news9live.com/wp-content/uploads/2023/12/Bumrah-AFP-1.png?w=1200&enlarge=true",//bumrah
      "https://akm-img-a-in.tosshub.com/businesstoday/images/story/202309/ap23021407083183_1-sixteen_nine-sixteen_nine.jpg?size=948:533",//siraj
      "https://crictoday.com/wp-content/uploads/2022/12/Shami-CricToday.jpg"//shami
    ]
];
List<List<String>> pName = [
  ["Virat","Rishabh","MSD"],
  ["Yuzi","Rohit","Jadeja"],
  ["Bumrah","Siraj","Shami"]
];
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cricket Players"),
        centerTitle: true,
        backgroundColor:Colors.blue,
      ),
      body: 
      ListView.separated(
        itemCount: players.length,
        separatorBuilder: (context, index) => const Text("---------------------------------------------------------------------------------------------------------------------------------------------------------------------"),
        itemBuilder: (context, index) => ListView.builder(
          shrinkWrap: true,
          itemCount: players[0].length,
          itemBuilder:(context, index1) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(pName[index][index1]),
              Container(
                height: 200,
                width: 200,
                child: Image.network(players[index][index1]),
              )
            ],
          ) ,
          
        )
      ),
      
    );
  }
}
/*
SizedBox(
          height:300,
          width:300,
          child:
          Image.network(players[index]),
        )*/