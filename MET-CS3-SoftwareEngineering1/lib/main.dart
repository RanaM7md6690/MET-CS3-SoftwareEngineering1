//import 'package:car_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:maureenexample/screens/car_screen.dart';
import 'package:maureenexample/screens/home_screen.dart';
import 'screens/login.screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
