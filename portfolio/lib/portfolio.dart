import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget{
  const Portfolio({super.key});
  @override
  State<Portfolio> createState() => _PortfolioState();
  }

class _PortfolioState extends State<Portfolio>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
    /*  bottomNavigationBar: BottomAppBar(child: 
      Row(
        children: [
          const Spacer(),
            ElevatedButton(onPressed: () {},
            child: const Text("Next"),)
        ],
      ),
      ),*/
      appBar: AppBar(
        title: const Text("Portfolio", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body:  
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children:[
          
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
          const Text("Name: Kunal Dattatray Dhurpate",),
          SizedBox(
            height: 150,
          width: 250,
            child:
          Image.network("https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8yNl8zZF9pbGx1c3RyYXRpb25fb2ZfYV9ib3lfc2l0dGluZ19vbl90aGVfZmxvb18zMjc1NTFkMC1mMzRiLTQ3NzItYjg4YS1hOGM5Yzg2ODFiMzFfMS5qcGc.jpg",),
          ),
          const Text("Collage: Zeal Collage"),
          SizedBox(
            height: 150,
            width: 300,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7Ci7eEdqLMNG0xOzgbcdBClVLP6O52ezZ8SASGGh3F-48gpMAaXqgHrXukYofQ9J3vu4&usqp=CAU"),
          ),
          const Text("Dream Company:Google"),
          SizedBox(
            height: 150,
            width: 300,
            child: 
            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/1200px-Google_%22G%22_logo.svg.png"),
          ),
           ],
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[ 
            ElevatedButton(onPressed: () {},
            child: const Text("Next",style: TextStyle(color: Color.fromARGB(255, 1, 51, 77),fontStyle: FontStyle.normal, ),),),
            const SizedBox(height: 10,)],
          ),
        ]
          ),
      
    );
  }
}