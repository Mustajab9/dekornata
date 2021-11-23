// ignore_for_file: prefer_const_constructors_in_immutables

part of 'products_bloc.dart';

abstract class ProductsEvent extends Equatable {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends ProductsEvent {}

class UpdateProducts extends ProductsEvent {
  final List<Product> product;

  UpdateProducts(this.product);

  @override
  List<Object> get props => [product];
}
