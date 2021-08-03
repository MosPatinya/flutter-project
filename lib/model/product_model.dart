import 'package:flutter/material.dart';
class ProductModel {
  String id;
  String productName;
  String name1;
  String name2;
  String name3;
  String category;
  double price;
  String imageUrl;
  ProductModel({
    @required this.id,
    @required this.productName,
    @required this.name1,
    @required this.name2,
    @required this.name3,
    @required this.category,
    @required this.price,
    @required this.imageUrl
  });
  factory ProductModel.fromMap(Map<String, dynamic>product) {
    if (product == null) {
      return null;
    }
    String id = product['id'];
    String productName = product['productName'];
    String name1 = product['name1'];
    String name2 = product['name2'];
    String name3 = product['name3'];
    String category = product['category'];
    double price = product['price'];
    String imageUrl = product['imageUrl'];
    return ProductModel (
      id: id,
      productName: productName,
      name1: name1,
      name2: name2,
      name3: name3,
      category: category,
      price: price,
      imageUrl: imageUrl, 
      );
  }
  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'productName' : productName,
      'name1' : name1,
      'name2' : name2,
      'name3' : name3,
      'category' : category,
      'price' : price,
      'imageUrl' : imageUrl,
    };
  }
}
