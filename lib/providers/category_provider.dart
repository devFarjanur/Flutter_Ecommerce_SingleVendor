// lib/providers/category_provider.dart
import 'package:flutter/material.dart';
import 'package:ecommerce/services/api_services.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _categories = [];
  bool _isLoading = false;

  List<Category> get categories => _categories;
  bool get isLoading => _isLoading;

  // Future<void> fetchCategories() async {
  //   _isLoading = true;
  //   notifyListeners();
  //
  //   try {
  //     _categories = await ApiService().fetchCategories();
  //   } catch (e) {
  //     print(e);
  //   } finally {
  //     _isLoading = false;
  //     notifyListeners();
  //   }
  // }
}
