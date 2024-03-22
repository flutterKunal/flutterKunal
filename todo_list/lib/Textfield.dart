import 'package:flutter/material.dart';

class Textfield extends StatefulWidget {
  const Textfield({super.key});

  @override
  State createState() => _Textfield_portfolioState();
}

class _Textfield_portfolioState extends State {
  String? _UserName=" ";
  String? _companyName =" ";
  String? _companyLocation =" ";
   List colorList =[
     const Color.fromRGBO(250, 232, 232, 1),
     const Color.fromRGBO(232,232,250,1),
     const Color.fromRGBO(250,249,232,1),
     const Color.fromRGBO(250,232,250,1),
     const Color.fromRGBO(250,232,232,1),  
  ];
  int color = 0;

  List<Map> info = [];
  bool flag = false;
  Widget returnWidget() {
    if (flag == true) {
      return Expanded(child:
       ListView.builder(
          itemCount: info.length,
          shrinkWrap: true,
          itemBuilder: (context, index) =>Container(
                height: 150,
                width: 400,
                
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.black),
                    color: colorList[color],
                    ),
                child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Text("Name : ${info[index]["name"]}"),
                              const SizedBox(
                                height: 15,
                              ),
                              Text("Company : ${info[index]["company"]}"),
                              const SizedBox(
                                height: 15,
                              ),
                              Text("Name : ${info[index]["location"]}"),
                            ],
                          ),
                )
          )
      );
    } else {
      return const SizedBox(
        height: 150,
        width: 400,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Text Field",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.orange,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 45,
            width: 300,
            child:
          TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  fillColor: Colors.amber,
                  hintText: "Enter Name"),
              onChanged: (value) {
                print(value);
              },
              onSubmitted: (value) {
                _UserName = value;
              }),),

          const SizedBox(height: 5),
          SizedBox(
            height: 45,
            width: 300,
            child:
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                hintText: "Enter CompanyName",
                fillColor: Colors.amber),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              _companyName = value;
            },
          ),),
          const SizedBox(height: 5),
          SizedBox(
            height:45,
            width: 300,
            child:
          TextField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                hintText: "Enter Company Location",
                fillColor: Colors.amber),
            onChanged: (value) {
              print(value);
            },
            onSubmitted: (value) {
              _companyLocation = value;
            },
          ),),
          
          const SizedBox(height: 10),
         
          ElevatedButton(
              onPressed: () {
                if(color>=colorList.length-1){
                 setState(() {
                    color=0;
                 });
                }
                flag = true;
                Map user = {
                  "name": _UserName,
                  "company": _companyName,
                  "location": _companyLocation
                };
                info.add(user);

                setState(() {});
                color++;
              },
              child: const Text("Submit")),
          const SizedBox(
            height: 5,
          ),
          returnWidget(),
        ]
     ),
);
 }
}