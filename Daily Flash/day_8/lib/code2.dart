import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
   const MyApp({super.key});

   @override
   State createState() => _MyAppState();
}

class _MyAppState extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Images"),
      ),
      body:
      Container(
        margin: const EdgeInsets.all(10),
        child:

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: 
          
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //img1
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDNwxlsaHzByo9G0zVcyrpXoOmV6luPVdntg&usqp=CAU",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Pizza",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10),
            //img 2
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://www.tasteofhome.com/wp-content/uploads/2022/03/KFC-Ultimate-BBQ-Chicken-Sandwich-Courtesy-Kentucky-Fried-Chicken-Resize-Crop-DH-TOH-Top-Fast-Food-Items-2023.jpg?fit=700%2C700",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Burger",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            //img 3
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://www.jocooks.com/wp-content/uploads/2018/12/creamy-tomato-chicken-pasta-1-20.jpg",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Pasta",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),

             //img 4
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://aromaticessence.co/wp-content/uploads/2022/05/virhin_mojito_featured.jpg",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Virgin Mojito",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 5
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLs_IGa-jmv5RNhz0BT4tSocJ9IFoVk2U6zA&usqp=CAU",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Shwarma",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 6
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://cravinghomecooked.com/wp-content/uploads/2023/07/grilled-cheese-1-13.jpg",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Sandwich",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 7
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://assets.cntraveller.in/photos/6218cfdf6774879c067d3ece/1:1/w_1079,h_1079,c_limit/best%20biryani%20in%20pune%20lead.jpg",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Biryani",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 8
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDNwxlsaHzByo9G0zVcyrpXoOmV6luPVdntg&usqp=CAU",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Pizza",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 9
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDNwxlsaHzByo9G0zVcyrpXoOmV6luPVdntg&usqp=CAU",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Pizza",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
             //img 10
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  child:                
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDNwxlsaHzByo9G0zVcyrpXoOmV6luPVdntg&usqp=CAU",
                            height: 250,width: 200,),
                ),
              const SizedBox(height: 5,),

              Container(
                height: 40,
                width: 200,
                alignment: const Alignment(0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: 
                const Text("Pizza",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,),),
              )
              ]
            ),
            const SizedBox(width: 10,),
            
        ],
      ),
        )
      )
    );

  }
}