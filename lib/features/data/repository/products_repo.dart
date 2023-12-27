import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/models/product_list_model.dart';

class ProductRepo {
  Future<List<Product>> getCoffee() async {
    List<Product> products = [];
    try {
      final pro = await FirebaseFirestore.instance
          .collection('products')
          .where('category', isEqualTo: 'Coffee')
          .get();
      pro.docs.forEach((element) {
        print(element.data());
        products.add(Product.fromJson(element.data()));
      });
      return products; // Add this line to return the list of products
    } on FirebaseException catch (e) {
      print(e.toString());
      return products;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Product>> getBakery() async {
    List<Product> products = [];
    try {
      final pro = await FirebaseFirestore.instance
          .collection('products')
          .where('category', isEqualTo: 'Bakery')
          .get();
      pro.docs.forEach((element) {
        print(element.data());
        products.add(Product.fromJson(element.data()));
      });
      return products; // Add this line to return the list of products
    } on FirebaseException catch (e) {
      print(e.toString());
      return products;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Product>> getDrinks() async {
    List<Product> products = [];
    try {
      final pro = await FirebaseFirestore.instance
          .collection('products')
          .where('category', isEqualTo: 'Drinks')
          .get();
      pro.docs.forEach((element) {
        print(element.data());
        products.add(Product.fromJson(element.data()));
      });
      return products; // Add this line to return the list of products
    } on FirebaseException catch (e) {
      print(e.toString());
      return products;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<List<Product>> getSignatured() async {
    List<Product> products = [];
    try {
      final pro = await FirebaseFirestore.instance
          .collection('products')
          .where('category', isEqualTo: 'Signatured')
          .get();
      pro.docs.forEach((element) {
        print(element.data());
        products.add(Product.fromJson(element.data()));
      });
      return products; // Add this line to return the list of products
    } on FirebaseException catch (e) {
      print(e.toString());
      return products;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
