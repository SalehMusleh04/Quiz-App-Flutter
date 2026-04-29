import 'package:flutter/material.dart';
import 'package:quiz_app2/pages/home_page.dart';

void main() {
  runApp(const MyQuizApp());
}

class MyQuizApp extends StatelessWidget {
  const MyQuizApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
