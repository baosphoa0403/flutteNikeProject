import 'dart:convert';

class Category {
  String id;
  String nameCategory;
  Category({
    required this.id,
    required this.nameCategory,
  });

  @override
  String toString() => 'Category(nameCategory: $nameCategory,id: $id)';

  Map<String, String> toMap() {
    // gửi lên sever
    return {
      'id': id,
      'nameCategory': nameCategory,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    // lấy sever xuống
    return Category(
      id: map['_id'],
      nameCategory: map['nameCategory'],
    );
  }

  String toJson() => json.encode(toMap()); // convert đưa lên sever

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source)); // convert lấy từ server xuống
}
