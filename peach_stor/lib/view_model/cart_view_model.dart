import 'package:flutter/foundation.dart';

class CartViewModel extends ChangeNotifier {
  final Map<String, Map<String, dynamic>> _items = {};

  Map<String, Map<String, dynamic>> get items => _items;

  double get total => _items.values
      .fold(0, (sum, item) => sum + (item['price'] * item['quantity']));

  void addItem(String productId, String name, double price, String imageUrl) {
    if (_items.containsKey(productId)) {
      _items[productId]!['quantity'] += 1;
    } else {
      _items[productId] = {
        'name': name,
        'price': price,
        'imageUrl': imageUrl,
        'quantity': 1,
      };
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void incrementQuantity(String productId) {
    if (_items.containsKey(productId)) {
      _items[productId]!['quantity'] += 1;
      notifyListeners();
    }
  }

  void decrementQuantity(String productId) {
    if (_items.containsKey(productId)) {
      if (_items[productId]!['quantity'] > 1) {
        _items[productId]!['quantity'] -= 1;
      } else {
        _items.remove(productId);
      }
      notifyListeners();
    }
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}