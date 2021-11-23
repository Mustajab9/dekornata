// ignore_for_file: prefer_const_constructors

import 'package:dekornata/blocs/cart/cart_bloc.dart';
import 'package:dekornata/constants.dart';
import 'package:dekornata/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;
  const CartProductCard({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Image.network(
            product.gambar,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text(
                  'Rp${product.price}',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              return Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.remove, color: kPrimaryColor),
                      onPressed: () {
                        context
                            .read<CartBloc>()
                            .add(CartProductRemoved(product));
                      }),
                  Text(
                    '$quantity',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  IconButton(
                      icon: Icon(Icons.add, color: kPrimaryColor),
                      onPressed: () {
                        context.read<CartBloc>().add(CartProductAdded(product));
                      }),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
