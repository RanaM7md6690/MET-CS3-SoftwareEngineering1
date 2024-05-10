import 'package:toy_store/Widgets/ToyCard.dart';
import 'package:toy_store/constant.dart';
import 'package:flutter/material.dart';

import '../model/Toy_Model.dart';

class HomeView extends StatelessWidget {
   HomeView({super.key});

  static String id = 'HomeView';
  final List<Toy> toys = [
    Toy(name: 'Buzz Yateer', image: 'assets/buzzyateer.jpeg', price: '19.99'),
    Toy(name: 'Bike', image: 'assets/Bike.jpg', price: '59.99'),
    Toy(name: 'Slime', image: 'assets/Slime.jpg', price: '5.99'),
    Toy(name: 'Batman', image: 'assets/batmantoy.jpeg', price: '19.99'),
    Toy(name: 'Spiderman', image: 'assets/Spiderman.jpeg', price: '19.99'),
    Toy(name: 'Cars', image: 'assets/cars.jpeg', price: '9.99'),
    Toy(name: 'Barbie', image: 'assets/barbie.jpeg', price: '19.99'),
    Toy(name: 'Skate', image: 'assets/skate.jpeg', price: '49.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGroundColor,
      appBar: AppBar(
        title: Text(
          'Toy Store',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: SizedBox(),
        backgroundColor: MainColor,
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: toys.length,
        itemBuilder: (BuildContext context, int T) {
          return ToyCard(toy: toys[T]);
        },

      ),
    );
  }
}
