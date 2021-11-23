import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dekornata/models/Product.dart';
import 'package:dekornata/repositories/product/base_product_repository.dart';

class ProductRepository extends BaseProductRepositoriy {
  final FirebaseFirestore _firebaseFirestore;

  ProductRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Product>> getAllProducts() {
    return _firebaseFirestore.collection('product').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
    });
  }
}
