import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:
        Container(
          height: double.infinity,
          child: 
           Row(  
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end, 
            children: [
              Container(width: 150,height: 150,color: Colors.red,),
              Container(width: 150,height: 150,color: Colors.green,),
              Container(width: 150,height: 150,color: Colors.blue,),
            ],
          ),
     
        ),
      ),
    );
  }
}
