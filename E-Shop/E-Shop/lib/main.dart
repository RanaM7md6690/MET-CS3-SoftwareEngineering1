import 'package:eshop/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/Logins-Pages/login.dart';
import 'package:eshop/Logins-Pages/sign_up.dart';
import 'package:eshop/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Electrical Store',
      home: LoginScreen(),
    );
  }
}
