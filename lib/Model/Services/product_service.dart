import 'dart:convert';

import 'package:demo/Model/Entity/product.dart';
import 'package:demo/Model/Services/base_service.dart';
import 'package:dio/dio.dart';

class ProductService implements BaseService<Product> {
  @override
  Future<List<Product>> getALL() async {
    try{
    Response response =
        await Dio().get("http://management-shoes.herokuapp.com/product");

    List<dynamic> productList =response.data
         .map((item) => Product.fromMap(item))
        .toList();
        print(List.from(productList));    
    return List.from(productList);
    }catch (e) {
      print(e);
    }
    return null!;
  }

  @override
  Future<Product> getById() {
    // TODO: implement getById
    throw UnimplementedError();
  }
}
