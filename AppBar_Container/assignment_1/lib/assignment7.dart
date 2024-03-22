import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget{
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar",
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic
      ),
    ),
    backgroundColor: Colors.black,
      ),
      body:
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Column(children: [
        Row(
            children: [
              Image.network("https://i.redd.it/m6aqgnw2nxrb1.jpg",
              height:300 ,
              width:150 ,),
             const SizedBox(width:150),
              Image.network("https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg",
              height:300 ,
              width: 150,),
              const SizedBox(width: 150,),
              Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Alita_Battle_Angel_%282019_poster%29.png/220px-Alita_Battle_Angel_%282019_poster%29.png",
              height: 300,
              width: 150,),
              const SizedBox(width: 150,),
              Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Alita_Battle_Angel_%282019_poster%29.png/220px-Alita_Battle_Angel_%282019_poster%29.png",
              height: 300,
              width: 150,),
              const SizedBox(width: 150,),
            ],
        ),
            ],
            ),
          ),
        
      );
      
  }
}