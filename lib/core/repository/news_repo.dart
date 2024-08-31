import 'package:getx_lesson/core/model/article.dart';

abstract class NewsRepo {
  Future<List<Article>> getNewsHeadlines();
  Future<List<Article>> getSearchedNews();
}
