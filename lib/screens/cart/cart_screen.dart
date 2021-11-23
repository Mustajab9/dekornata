// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:dekornata/blocs/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../size_config.dart';
import 'components/cart_product_card.dart';
import 'components/custom_app_bar.dart';
import 'components/custom_nav_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(),
      body: Padding(
        padding: EdgeInsets.only(top: getProportionateScreenHeight(15)),
        child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is CartLoaded) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: ListView.builder(
                  itemCount: state.cart
                      .productQuantity(state.cart.demoProducts)
                      .keys
                      .length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: CartProductCard(
                      product: state.cart
                          .productQuantity(state.cart.demoProducts)
                          .keys
                          .elementAt(index),
                      quantity: state.cart
                          .productQuantity(state.cart.demoProducts)
                          .values
                          .elementAt(index),
                    ),
                  ),
                ),
              );
            } else {
              return Text('Someting Went Wrong');
            }
          },
        ),
      ),
    );
  }
}
