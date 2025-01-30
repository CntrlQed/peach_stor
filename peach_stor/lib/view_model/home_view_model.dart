import 'package:flutter/foundation.dart';

class HomeViewModel extends ChangeNotifier {
  String _searchQuery = '';
  String _selectedCategory = 'All';

  String get searchQuery => _searchQuery;
  String get selectedCategory => _selectedCategory;

  final List<String> categories = [
    'All',
    // 'Electronics',
    'Clothing',
    // 'Books',
    // 'Home',
  ];

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }
}