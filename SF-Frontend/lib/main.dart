import 'package:flutter/material.dart';
import 'package:sf/Screens/WelcomeScreen.dart';
//import 'Screens/SoilContentE.dart';
//import 'Screens/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
