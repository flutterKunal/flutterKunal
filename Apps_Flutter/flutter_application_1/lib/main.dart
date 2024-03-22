import 'package:flutter/material.dart';
import 'palindrome.dart';
void main() {
  runApp(const MainApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Palindrome(),
    );
  }
}
