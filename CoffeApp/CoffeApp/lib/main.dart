import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'home_screen.dart';
import 'menu_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'coffee shop app',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: 'splash_screen',
      routes: {
        'splash_screen': (context) => SplashScreen(),
        'login_screen': (context) => LoginScreen(),
        'signup_screen': (context) => SignupScreen(),
        'home_screen': (context) => SplashScreen(),
      },
    );
    body:
    Center(
      child: Image.asset(
        'coffee.jpeg',
        width: 200,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
