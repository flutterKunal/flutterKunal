import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{
  List<Map> data =[
    {
      "image": "https://storage.googleapis.com/support-kms-prod/ZAl1gIwyUsvfwxoW9ns47iJFioHXODBbIkrK",
      "name" : "Google",
    },
    {
      "image": "https://logos-world.net/wp-content/uploads/2023/08/X-Logo.png",
      "name" : "X",
    },
    {
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/800px-Instagram_logo_2022.svg.png",
      "name" : "Instagram",
    },
    {
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/1200px-Facebook_f_logo_%282019%29.svg.png",
      "name" : "Facebook",
    },
    {
      "image": "https://yt3.googleusercontent.com/duPiORtdh_jVSW1VuoLltVXJuvPD1BvkbhqrCMIrsWjVDWCKdUzmaNYhJX1QjAnjrRgNiZ37jCU=s900-c-k-c0x00ffffff-no-rj",
      "name" : "Core2Web",
    },
    {
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/ChatGPT_logo.svg/1200px-ChatGPT_logo.svg.png",
      "name" : "ChatGPT",
    },
    {
      "image": "https://store-images.s-microsoft.com/image/apps.10546.13571498826857201.6603a5e2-631f-4f29-9b08-f96589723808.dc893fe0-ecbc-4846-9ac6-b13886604095?h=464",
      "name" : "Spotify",
    },
    {
      "image": "https://static-00.iconduck.com/assets.00/linkedin-icon-1024x1024-net2o24e.png",
      "name" : "Linkedin",
    },
    {
      "image": "https://staticg.sportskeeda.com/editor/2021/06/b400a-16226420458969.png",
      "name" : "BGMI",
    },
    {
      "image": "https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm",
      "name" : "COC",
    },
  ];

  List color = [
    Colors.amber,Colors.blue,Colors.red,Colors.brown,Colors.grey
  ];

   @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
    title: const Text("My App",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
    centerTitle: true,
    backgroundColor: Colors.brown,
  ),
  body: 
        ListView.builder(
    itemCount: color.length,
    itemBuilder:(context, index) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network("${data[index]["image"]}",height: 80,width: 80,),

                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Text("${data[index]["name"]}"),
                )
              ]
            )
          ),
        )
      ],
    )
        )
    );
  }
}