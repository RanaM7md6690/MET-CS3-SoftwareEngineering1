import 'package:flutter/material.dart';
import 'package:maureenexample/models/card_model.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({super.key, required this.car});
  final CardModel car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff11A7FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffe5e5e5),
        iconTheme: IconThemeData(
          size: 32,
          color: Color(0xff11A7FB),
        ),
        title: Text(
          'Back',
          style: TextStyle(),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffe5e5e5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 130,
                child: Image.asset(
                  car.image,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text(car.title,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  Text('Price: ${car.price}',
                      style: TextStyle(
                        fontSize: 32,
                        color: Color(0xff003459),
                      )),
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
            width: 180,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xff003459),
            ),
            child: Center(
              child: Text(
                'Buy Now',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
