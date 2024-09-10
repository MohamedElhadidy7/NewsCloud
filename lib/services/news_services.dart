import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsServices {
  final Dio dio = Dio();

  Future<List<articlemodel>> getnews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/everything?q=$category&apiKey=6f1f333649924ad8bbb871767463afa5');
      Map<String, dynamic> jsondata = response.data;

      List<dynamic> articles = jsondata['articles'];
      List<articlemodel> articlesList = [];
      for (var article in articles) {
        articlemodel articalmodel = articlemodel.fromJson(article);
        articlesList.add(articalmodel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
