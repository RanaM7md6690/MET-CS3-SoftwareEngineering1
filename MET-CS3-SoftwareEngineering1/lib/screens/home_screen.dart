import 'package:flutter/material.dart';
import 'package:maureenexample/models/card_model.dart';
import 'package:maureenexample/widgets/Card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  final List<CardModel> car = [
    CardModel(title: 'BMW M2', image: 'images/BMW M2.png', price: '1,000,000'),
    CardModel(title: 'Camaro', image: 'images/camaro.png', price: '2,000,000'),
    CardModel(
        title: 'Hyundai',
        image: 'images/hyundai santa fe.png',
        price: '1,500,000'),
    CardModel(
        title: 'Mercedes',
        image: 'images/mercedes-Benz.png',
        price: '3,000,000'),
    CardModel(
        title: 'Toyota Corolla',
        image: 'images/toyota corrola.png',
        price: '500,000'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11A7FB),
      appBar: AppBar(
        leading: SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 40,
              ),
            ),
          )
        ],
        backgroundColor: Color(0xff11A7FB),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            'Car Shop',
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffe5e5e5),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: ListView.builder(
              itemCount: car.length,
              itemBuilder: (context, int i) {
                return CustomCard(car: car[i]);
              },
            )),
      ),
    );
  }
}
