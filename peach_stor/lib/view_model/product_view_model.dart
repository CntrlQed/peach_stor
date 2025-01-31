import 'package:flutter/foundation.dart';

class ProductViewModel extends ChangeNotifier {
  final List<Map<String, dynamic>> _products = [
    {
      'id': '1',
      'name': 'Smartphone X',
      'price': 699.99,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkKQXmtPXodlOnWMT6QuJsuUYvLkfdt1Od_g&s',
      'description': 'Latest smartphone with amazing features',
    },
    {
      'id': '2',
      'name': 'Laptop Pro',
      'price': 1299.99,
      'imageUrl': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkKQXmtPXodlOnWMT6QuJsuUYvLkfdt1Od_g&s',
      'description': 'Powerful laptop for professionals',
    },
   
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