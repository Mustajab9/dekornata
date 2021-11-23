// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dekornata/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

// ignore: must_be_immutable
class CarouselCard extends StatelessWidget {
  final Product product;
  final int selectedImage = 0;

  const CarouselCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 20,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(238),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Hero(
                    tag: product.id.toString(),
                    child: Image.asset(product.images[selectedImage]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
