// ignore_for_file: prefer_const_constructors

import 'package:dekornata/blocs/cart/cart_bloc.dart';
import 'package:dekornata/constants.dart';
import 'package:dekornata/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is CartLoaded) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kPrimaryColor),
                        ),
                        Text(
                          'Rp ${state.cart.subtotalString}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kPrimaryColor),
                        ),
                        Text(
                          'Rp ${state.cart.deliveryFeeString}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: getProportionateScreenWidth(310),
                    height: 50,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: kPrimaryColor),
                          ),
                          Text(
                            'Rp ${state.cart.totalString}',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: kPrimaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return Text('Someting Went Wrong');
        }
      },
    );
  }
}
