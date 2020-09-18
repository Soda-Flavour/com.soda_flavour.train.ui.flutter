import 'package:dio/dio.dart';
import 'package:frontend/models/news_article.model.dart';

class WebService {
  var dio = new Dio();

  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=fdfa5d00862b45dd8bd861e585dbb4f9';

    final response = await dio.get(url);
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception('cant get list');
    }
  }
}
