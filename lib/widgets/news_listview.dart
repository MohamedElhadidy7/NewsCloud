//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
//import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_tile.dart';

class news_listview extends StatelessWidget {
  final List<articlemodel> articles;
  news_listview({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articalmodel: articles[index],
      );
    }));
  }
}
