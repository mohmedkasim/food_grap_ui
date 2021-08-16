import 'package:flutter/material.dart';
import 'package:food_grab/main_structure.dart';
import 'package:food_grab/screens/home_screen.dart';
import 'package:food_grab/screens/order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "poppins"),
      debugShowCheckedModeBanner: false,
      home: MainStructure(),
    );
  }
}
