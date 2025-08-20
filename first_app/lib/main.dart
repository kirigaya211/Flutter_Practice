import 'package:flutter/material.dart';
import 'package:first_app/practice.dart';

void main() {
  runApp(const MyApp());
}

Color firstColor = Color.fromARGB(255, 26, 7, 0);
Color secondColor = Color.fromARGB(255, 7, 10, 8);

// With Flutter, you create user interfaces by combining "widgets"
// You'll learn all about them (and much more) throughout this course!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Every custom widget must have a build() method
  // It tells Flutter, which widgets make up your custom widget
  // Again: You'll learn all about that throughout the course!

  @override
  Widget build(BuildContext context) {
    // Below, a bunch of built-in widgets are used (provided by Flutter)
    // They will be explained in the next sections
    // In this course, you will, of course, not just use them a lot but
    // also learn about many other widgets!
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: GradientContainer([firstColor,secondColor]),
      ),
    );
  }
}
