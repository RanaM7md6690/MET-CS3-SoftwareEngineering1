import 'package:flutter/material.dart';
import 'package:eshop/models/product.dart';
import 'package:eshop/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
  });

  final int itemIndex;
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 25,
                  color: Colors.black12,
                ),
              ],
            ),
          ),
          // Section Image
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Product Card
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 136,
              // Because oure image is 200 width, then: width - 200
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  // Text: Title
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Spacer(),
                  // Text: SubTitle
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      product.subTitle,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Spacer(),
                  // Container Price
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding + 1.5, // 30px padding
                        vertical: kDefaultPadding / 5, // 5px padding
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text('Price:${product.price}\$'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
