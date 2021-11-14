import 'package:demo/Model/Entity/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getALLProduct();
}
