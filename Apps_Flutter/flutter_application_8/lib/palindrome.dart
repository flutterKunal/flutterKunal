import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget{
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
  }

  class _PalindromeState extends State<Palindrome>{
    List<int> l = [121,411,732,919,141];
    int count = 0;
    int cnt = 0;
    void palindromeCount(){
      Iterator it = l.iterator;
      while(it.moveNext()){
        if(it.current==null){
            break;
        }
        int n = it.current;
        int temp = n;
        int val = 0;
        while(temp !=0){
          val = val*10 + (temp%10);
          temp = temp ~/10;
        } 
        if (val ==n){
          count++;
        }

      }
      setState((){
        cnt=count;
      });
    }
    @override
    Widget build (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title : const Text("count Numbers"),
        ),
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const SizedBox(
              height:20,
            ),
            ElevatedButton(
              onPressed:palindromeCount,
              child:const Text("Next"),
            ),
          ],
        )
           ),
      );
    }
  }
