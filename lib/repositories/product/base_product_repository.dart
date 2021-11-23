import 'package:dekornata/models/Product.dart';

abstract class BaseProductRepositoriy {
  Stream<List<Product>> getAllProducts();
}
