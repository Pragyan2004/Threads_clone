import 'package:flutter/material.dart';
import 'package:threads_clone/screen/homepage.dart';
import 'package:threads_clone/screen/widget/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navi(),
    );
  }
}