import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
//import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_listview.dart';

class newslistviewBuilder extends StatefulWidget {
  final String category;

  const newslistviewBuilder({super.key, required this.category});
  @override
  State<newslistviewBuilder> createState() => _newslistviewBuilderState();
}

class _newslistviewBuilderState extends State<newslistviewBuilder> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getnews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<articlemodel>>(
        future: future,
        builder: (context, snapshot) {
          //snapshot حاويه بستقبل فيها البيانات
          if (snapshot.hasData) {
            return news_listview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('opps '),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                  child: CircularProgressIndicator(
                color: Colors.orange,
              )),
            );
          }
        });
  }
}
