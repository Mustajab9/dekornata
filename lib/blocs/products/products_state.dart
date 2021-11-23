// ignore_for_file: prefer_const_constructors_in_immutables

part of 'products_bloc.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsLoading extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<Product> product;

  ProductsLoaded({this.product = const <Product>[]});

  @override
  List<Object> get props => [product];
}
