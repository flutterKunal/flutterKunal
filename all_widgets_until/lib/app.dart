import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  
  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  
  List<String> username = ["kunaldhurpate","welth","Koiengsegg","Carz expert","thetrillionairelife"];

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.network("https://www.edigitalagency.com.au/wp-content/uploads/instagram-logo-white-text-black-background.png",height: 90,width: 110,),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        actions: const [
           Icon(Icons.message_rounded,color: Colors.white )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [ 
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(),),
           const Row(
              children:[
              Icon(Icons.supervised_user_circle_sharp,size: 30,color: Colors.white,),
              Text("koenigsegg",style: TextStyle(fontWeight:FontWeight.w300,fontSize: 15,color: Colors.white ),)
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.network("https://images.drive.com.au/caradvice/image/private/c_fill,f_auto,g_auto,h_1080,q_auto:eco,w_1920/v1/iippmjm5pwsz350e6hxb"),
            ),
             const Row(
                children: [
                  Icon(Icons.favorite_outline_sharp,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.comment,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.send_outlined,color: Colors.white ),
                  Spacer(),
                  Icon(Icons.bookmark_outline,color: Color.fromARGB(255, 110, 190, 255))
                ],
              ),
               
               const  Text("Beyond its unparalleled performance, the One:1 served as an educational platform, offering valuable insights into lightweight materials, optimized engine technology, advanced construction techniques, and pushing the iconic Koenigsegg silhouette to unprecedented extremes.",style: TextStyle(color: Colors.white),),
              const SizedBox(height:10),
              const Row(
              children:[
              Icon(Icons.supervised_user_circle_sharp,size: 30,color: Colors.white,),
              Text("bmw",style: TextStyle(fontWeight:FontWeight.w300,fontSize: 15,color: Colors.white ),)
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.network("https://www.bmw-m.com/content/dam/bmw/marketBMW_M/common/all-models/m-automobile/xm-serie/bmw-xm-walk-around-video-container.jpg"),
            ),
             const Row(
                children: [
                  Icon(Icons.favorite_outline_sharp,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.comment,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.send_outlined,color: Colors.white ),
                  Spacer(),
                  Icon(Icons.bookmark_outline,color: Colors.white )
                ],
              ),
              
              const Text("BMW XM: Combined fuel consumption, weighted: 1.7–1.3 l/100 km. Combined power consumption, weighted: 32.2–31.5 kWh/100 km. Combined CO2 emissions, weighted: 37–30 g/km. Electric range: 32–33 kilometers.",style: TextStyle(color: Colors.white),),
              const SizedBox(
                height: 10,
                 ),

              const Row(
              children:[
              Icon(Icons.supervised_user_circle_sharp,size: 30,color: Colors.white,),
              Text("porsche",style: TextStyle(fontWeight:FontWeight.w300,fontSize: 15,color: Colors.white ),)
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.network("https://images.drive.com.au/caradvice/image/private/c_fill,f_auto,g_auto,h_1080,q_auto:eco,w_1920/v1/kxzrvgugtucsxui7nchp"),
            ),
             const Row(
                children: [
                  Icon(Icons.favorite_outline_sharp,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.comment,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.send_outlined,color: Colors.white ),
                  Spacer(),
                  Icon(Icons.bookmark_outline,color: Colors.white )
                ],
              ),
              
               const  Text("911 GT3 RS: Fuel consumption combined in l/100 km: 13,4 (WLTP); CO2 emissions combined in g/km: 305 (WLTP) I Taycan Turbo S: Electrical consumption combined in kWh/100 km: 23,4 - 22,0 (WLTP); Range combined in km: 440 - 467 (WLTP), Range City in km: 524 - 570 (WLTP); CO2 emissions combined in g/km: 0 (WLTP)",style: TextStyle(color: Colors.white),),
             const SizedBox(
                height: 10,
                ),
                
              const Row(
              children:[
              Icon(Icons.supervised_user_circle_sharp,size: 30,color: Colors.white,),
              Text("Ferrari",style: TextStyle(fontWeight:FontWeight.w300,fontSize: 15,color: Colors.white ),)
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.network("https://cdn.motor1.com/images/mgl/qkZ96Z/s1/novitec-ferrari-812-competizione.jpg"),
            ),
             const Row(
                children: [
                  Icon(Icons.favorite_outline_sharp,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.comment,color: Colors.white ),
                  SizedBox(width: 10,),
                  Icon(Icons.send_outlined,color: Colors.white ),
                  Spacer(),
                  Icon(Icons.bookmark_outline,color: Colors.white )
                ],
              ),
              const SizedBox(
                height: 40,
                child: 
                 Text("The details and style of this #Ferrari812Competizione, created through the #FerrariTailorMade programme, are the epitome of unequivocal elegance.The bodywork in Blu Pozzi paint presents a cabin as cocooning and welcoming as it is regal. Inside, the leather is the prevailing theme, with details evoking aristocratic sophistication, complemented by inserts in black Alcantara® and numerous details trimmed in black trefoil pattern SuperFabric®.",style: TextStyle(color: Colors.white),),
              ),
          ],
        )
         ),
         bottomNavigationBar: BottomAppBar(
          color: Colors.black87,
          child: Row(
          children: [
            IconButton(onPressed:() {}, icon: const Icon(Icons.home,color: Colors.white),),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.white)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined,color:Colors.white)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.video_collection_rounded,color:Colors.white),),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.supervised_user_circle_outlined,color: Colors.white,),),
          const Spacer(),
          ],
         )),
      );
  }
}