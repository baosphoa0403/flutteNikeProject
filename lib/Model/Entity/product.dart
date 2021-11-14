import 'dart:convert';

import 'package:demo/Model/Entity/category.dart';

class Product {
  String id;
  String name;
  Category category;
  String createDate;
  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.createDate,
  });

  Map<String, dynamic> toMap() {
    return {
      '_id': id,
      'name': name,
      'category': category.toMap(),
      'createDate': createDate,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['_id'],
      name: map['name'],
      category: Category.fromMap(map['category']),
      createDate: map['createDate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
