import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class Category_view extends StatelessWidget {
  final String category;

  const Category_view({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              newslistviewBuilder(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
