import 'package:flutter/material.dart';
import 'package:softwarep/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Coffee Shop!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Image.network(
              'https://img.freepik.com/premium-photo/fresh-coffee-beans_74095-2179.jpg?w=1800',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Text('Menu'),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality for the button, e.g., navigate to user profile or settings
              },
              child: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
