import 'package:flutter/material.dart';
//import 'package:news_app/models/articles_model.dart';
//import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
//import 'package:news_app/widgets/news_listview.dart';
//import 'package:news_app/widgets/news_tile.dart';

class home_view extends StatelessWidget {
  home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: category_listview(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            newslistviewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
