import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/model/product_model.dart';

class Database {
  static Database instance = Database._();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  Database._();
  Stream<List<ProductModel>> getAllProductStream() {
    final reference = FirebaseFirestore.instance.collection('products');
    Query query = reference.orderBy('id', descending: true);
    final snapshorts = query.snapshots();
    return snapshorts.map((snapshot) {
      return snapshot.docs.map((doc) {
        return ProductModel.fromMap(doc.data());
      }).toList();
    });
  }

  Future<void> setProduct({ProductModel product}) async {
    final reference = FirebaseFirestore.instance.doc('products/${product.id}');
    try {
      await reference.set(product.toMap());
    } catch (err) {
      rethrow;
    }
  }

  Future<void> deleteProduct({ProductModel product}) async {
    final reference = FirebaseFirestore.instance.doc('products/${product.id}');
    try {
      await reference.delete();
    } catch (err) {
      rethrow;
    }
  }
}
