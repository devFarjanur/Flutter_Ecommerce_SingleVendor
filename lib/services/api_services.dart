
// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://172.20.10.134:8000/api'; // Update to your local IP or ngrok URL

  Future<List<Category>> fetchCategories() async {
    final response = await http.get(Uri.parse('$baseUrl/categories'));

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      List<dynamic> data = jsonDecode(response.body);
      return data.map((category) => Category.fromJson(category)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
}

class Category {
  final int id;
  final String photo;
  final String categoryName;

  Category({required this.id, required this.photo, required this.categoryName});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      photo: json['photo'],
      categoryName: json['category_name'],
    );
  }
}
