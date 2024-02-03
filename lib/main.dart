// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:real_estate/models/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Real Estate",
      home: LoginScreen(),
    );
  }
}
