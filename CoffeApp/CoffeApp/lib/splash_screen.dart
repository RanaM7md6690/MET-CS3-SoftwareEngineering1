import 'dart:async';
import 'package:flutter/material.dart';
import 'package:softwarep/login_screen.dart';
import 'splash_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simulate a delay (e.g., 3 seconds) before navigating to HomeScreen
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://img.freepik.com/free-vector/set-coffee-elements-coffee-accessories-vector_53876-66783.jpg?w=1380&t=st=1714462881~exp=1714463481~hmac=de6a4945d1dc290ce695bf11375dd27a2e41c0c8e6ef5ed364e1ac1af8b58f17',
              height: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Coffee Shop',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
