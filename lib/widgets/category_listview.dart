import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class category_listview extends StatelessWidget {
  const category_listview({
    super.key,
  });
  final List<category_model> category = const [
    category_model(
        categoryname: "business", imageasseturl: 'assets/buisness.jpeg'),
    category_model(
        categoryname: "general", imageasseturl: 'assets/general.jpeg'),
    category_model(categoryname: "health", imageasseturl: 'assets/health.jpeg'),
    category_model(
        categoryname: "intertainment",
        imageasseturl: 'assets/intertainment.jpeg'),
    category_model(
        categoryname: "science", imageasseturl: 'assets/science.jpg'),
    category_model(categoryname: "sports", imageasseturl: 'assets/sports.jpeg'),
    category_model(
        categoryname: "technology", imageasseturl: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, i) {
          return CategoryCard(
            category: category[i],
          );
        },
      ),
    );
  }
}
