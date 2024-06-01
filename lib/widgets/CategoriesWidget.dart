// lib/widgets/CategoriesWidget.dart
import 'dart:convert';

import 'package:ecommerce/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/providers/category_provider.dart';
import 'package:http/http.dart' as http;

class CategoriesWidget extends StatefulWidget {
  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {

  List categories = [];
  String baseUrl = 'http://172.20.10.134:8000/';

   fetchCategories() async {
      // Update to your local IP or ngrok URL

    final response = await http.get(Uri.parse('$baseUrl/api/categories'));

    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
      List<dynamic> data = jsonDecode(response.body);
      setState(() {
        categories = data;
      });
    } else {
      throw Exception('Failed to load categories');
    }
  }

  @override void initState() {
    // TODO: implement initState
    super.initState();
    fetchCategories();
  }

  @override
  Widget build(BuildContext context) {

    if (categories.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.map((category) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  '${baseUrl}upload/admin_images/${category['photo']}',
                  width: 40,
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    category['category_name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
