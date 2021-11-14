import 'package:demo/Model/Entity/product.dart';
import 'package:demo/Model/Services/base_service.dart';
import 'package:dio/dio.dart';

class ProductService implements BaseService<Product> {
  @override
  Future<List<Product>> getALL() async {
    dynamic response =
        await Dio().get("http://management-shoes.herokuapp.com/product");
    final data = response.data;
    List<Product> productList = data
        .map((item) => {Product.fromJson(item.toString())})
        .toList() as List<Product>;
    print(productList);
    return productList;
  }

  @override
  Future<Product> getById() {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
