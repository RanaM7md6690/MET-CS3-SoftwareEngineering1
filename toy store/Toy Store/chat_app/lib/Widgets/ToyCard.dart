import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../model/Toy_Model.dart';

class ToyCard extends StatelessWidget {
  const ToyCard({super.key, required this.toy});
final Toy toy;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: CardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    toy.image,
                    height: 20,
                    width: 20,
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
              ),
              Column(
                children: [
                  Text(
                    toy.name,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/toyPage',arguments:toy );
                    },
                    child: Container(
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(toy.price),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
