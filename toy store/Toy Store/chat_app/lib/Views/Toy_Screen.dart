import 'package:toy_store/constant.dart';
import 'package:toy_store/model/Toy_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ToyView extends StatelessWidget {
  static String id = 'ToyView';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Toy;
    return Scaffold(
      backgroundColor: BackGroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: MainColor,
        title: Text(args.name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            color: MainColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150),
              bottomRight: Radius.circular(150),
            ),
          ),
          child: Center(
            child: Container(
              height: 200,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  args.image,
                  height: 20,
                  width: 20,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: MainColor,
            ),
            child: Column(
                children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Name: ${args.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 50,
                endIndent: 50,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 30),
                child: Text(
                  'Price: ${args.price}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
                  Container(
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text('Buy Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    ),
                  ),
            ]),
          ),
        )
      ]),
    );
  }
}
