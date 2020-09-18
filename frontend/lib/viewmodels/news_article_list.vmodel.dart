import 'package:flutter/material.dart';
import 'package:frontend/models/news_article.model.dart';
import 'package:frontend/services/web.service.dart';

import 'package:frontend/models/news_article.model.dart';
import 'package:frontend/services/web.service.dart';
import 'package:frontend/viewmodels/news_article.vmodel.dart';

enum LoadingStatus { completed, searching, empty }

class NewsArticleListViewModel with ChangeNotifier {
  LoadingStatus loadingStatus = LoadingStatus.empty;
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  void topHeadlines() async {
    List<NewsArticle> newsArticles = await WebService().fetchTopHeadlines();
    loadingStatus = LoadingStatus.searching;
    notifyListeners();

    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    if (this.articles.isEmpty) {
      this.loadingStatus = LoadingStatus.empty;
    } else {
      this.loadingStatus = LoadingStatus.completed;
    }
    notifyListeners();
  }
}
