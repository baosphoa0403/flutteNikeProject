import 'package:demo/Model/Entity/product.dart';
import 'package:demo/Model/Repositories/Abstract/product_repository.dart';
import 'package:demo/Model/Services/product_service.dart';

class ProductRepositoryImplement implements ProductRepository {
  @override
   Future<List<Product>> getALLProduct() {
    ProductService productService = ProductService();
    return productService.getALL();
  }
}
