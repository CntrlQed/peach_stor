import 'package:flutter/foundation.dart';

class ProductViewModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    {
      'id': '1',
      'name': 'Smartphone X',
      'price': 699.99,
      'imageUrl': 'https://picsum.photos/200',
      'description': 'Latest smartphone with amazing features',
    },
    {
      'id': '2',
      'name': 'Laptop Pro',
      'price': 1299.99,
      'imageUrl': 'https://picsum.photos/201',
      'description': 'Powerful laptop for professionals',
    },
    // Add more sample products
  ];

  List<Map<String, dynamic>> get products => _products;

  Map<String, dynamic>? getProductById(String id) {
    try {
      return _products.firstWhere((product) => product['id'] == id);
    } catch (e) {
      return null;
    }
  }
}