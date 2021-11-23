// ignore_for_file: prefer_const_constructors

import 'package:dekornata/blocs/cart/cart_bloc.dart';
import 'package:dekornata/constants.dart';
import 'package:dekornata/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:dekornata/models/Product.dart';
import 'package:dekornata/size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'product_description.dart';
import 'product_image.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      if (state is CartLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is CartLoaded) {
                        return ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: kPrimaryColor),
                          onPressed: () {
                            context
                                .read<CartBloc>()
                                .add(CartProductAdded(product));
                            Navigator.pushNamed(context, CartScreen.routeName);
                          },
                          child: Text(
                            'Add To Chat',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        );
                      } else {
                        return Text('Someting Went Wrong');
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
