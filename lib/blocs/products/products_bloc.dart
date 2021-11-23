import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dekornata/models/Product.dart';
import 'package:dekornata/repositories/product/product_repository.dart';
import 'package:equatable/equatable.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductRepository _productRepository;
  StreamSubscription? _productSubscription;
  ProductsBloc({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(ProductsLoading());

  @override
  Stream<ProductsState> mapEventToState(
    ProductsEvent event,
  ) async* {
    if (event is LoadProducts) {
      yield* _mapLoadProductsToState();
    }
    if (event is UpdateProducts) {
      yield* _mapUpdateProductsToState(event);
    }
  }

  Stream<ProductsState> _mapLoadProductsToState() async* {
    _productSubscription?.cancel();
    _productSubscription = _productRepository.getAllProducts().listen(
          (product) => add(
            UpdateProducts(product),
          ),
        );
  }

  Stream<ProductsState> _mapUpdateProductsToState(UpdateProducts event) async* {
    yield ProductsLoaded(product: event.product);
  }
}
