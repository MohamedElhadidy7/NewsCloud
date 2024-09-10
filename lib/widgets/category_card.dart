import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views.dart/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final category_model category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Category_view(
            category: category.categoryname,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.imageasseturl), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
              child: Text(
            category.categoryname,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
