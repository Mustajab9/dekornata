// ignore_for_file: file_names, prefer_collection_literals, unnecessary_new, must_be_immutable
import 'package:dekornata/models/Product.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  final List<Product> demoProducts;

  const Cart({this.demoProducts = const <Product>[]});

  Map productQuantity(products) {
    var quantity = Map();

    products.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });

    return quantity;
  }

  double get subtotal =>
      demoProducts.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 50000) {
      return 0;
    } else if (subtotal >= 0 && subtotal < 50000) {
      return 25000;
    } else {
      return 0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 50000) {
      return 'You Have Free Delivery';
    } else {
      double missing = 50000.0 - subtotal;

      return 'Add Rp ${missing.toStringAsFixed(2)} for FREE Delivery';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  @override
  List<Object?> get props => [demoProducts];
}
