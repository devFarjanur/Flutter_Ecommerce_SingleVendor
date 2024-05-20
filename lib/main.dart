import 'package:ecommerce/pages/HomePage.dart';
import 'package:flutter/material.dart';



void main() => runApp(Myapp());


class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage()
      },
    );
  }
}