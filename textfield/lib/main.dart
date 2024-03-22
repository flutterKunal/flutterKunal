import 'package:flutter/material.dart';
void main() {
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({super.key});
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return const MaterialApp(
title: 'Flutter Demo',
home: MyHomePage(title: 'Add Names'),
);
}
}
class MyHomePage extends StatefulWidget {
const MyHomePage({super.key, required this.title});
final String title;
@override
State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
final TextEditingController _nameController = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
backgroundColor: Colors.black,

foregroundColor: Colors.white,
title: Text(widget.title),
),
body: Column(
children: [
const SizedBox(
height: 20.0,
),
TextField(
  controller:_nameController,
  textInputAction: TextInputAction.done,
  keyboardType: TextInputType.text,
  decoration: InputDecoration(
    hintText: "Enter Your Name",
    hintStyle: TextStyle(color: Colors.pink),
    border: OutlineInputBorder(
      borderRadius:BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue
    )
    )
  ),
)
],
),

floatingActionButton: FloatingActionButton(
onPressed: () {},
child: const Text("ADD"),
),
);
}
}