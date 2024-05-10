import 'package:flutter/material.dart';

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
            Image.asset(
              'images/ass.png',
              width: 300.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()),
                );
              },
              child: Text('View Menu'),
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

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Shop Menu'),
      ),
      body: ListView(
        children: [
          MenuItem(
            name: 'Espresso',
            description: 'A shot of concentrated coffee brewed quickly.',
            price: 2.50,
          ),
          MenuItem(
            name: 'Cappuccino',
            description: 'Espresso mixed with steamed milk and foam.',
            price: 3.50,
          ),
          MenuItem(
            name: 'Latte',
            description: 'Espresso mixed with steamed milk.',
            price: 4.00,
          ),
          MenuItem(
            name: 'Mocha',
            description: 'Espresso mixed with chocolate and steamed milk.',
            price: 4.50,
          ),
          MenuItem(
            name: 'Americano',
            description: 'Espresso with hot water.',
            price: 3.00,
          ),
          MenuItem(
            name: 'Macchiato',
            description:
                'Espresso "stained" with a small amount of steamed milk.',
            price: 3.50,
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String name;
  final String description;
  final double price;

  const MenuItem({
    required this.name,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text(description),
        trailing: Text('\$$price'),
      ),
    );
  }
}
