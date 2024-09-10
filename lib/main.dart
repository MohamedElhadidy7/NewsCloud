import 'package:flutter/material.dart';
import 'package:news_app/views.dart/home.dart';

void main() {
  runApp(const news_app());
}

class news_app extends StatelessWidget {
  const news_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_view(),
    );
  }
}
