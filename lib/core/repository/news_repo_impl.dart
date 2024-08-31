import 'package:get/get.dart';
import 'package:getx_lesson/core/model/article.dart';
import 'package:getx_lesson/core/repository/news_repo.dart';
import 'package:getx_lesson/services/http_service.dart';
import 'package:getx_lesson/services/http_service_impl.dart';

import '../model/news_response_model.dart';

class NewsRepoImpl implements NewsRepo {
  late HttpService _httpService;

  NewsRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<Article>> getNewsHeadlines() async {
    try {
      final response =
          await _httpService.getRequest('api/v1/article/getArticles');
      print('response: $response');
      final parsedResponse = NewsResponse.fromJson(response.data);
      return parsedResponse.articles;
    } catch (e) {
      print(e);
      return [];
    }
  }

  @override
  Future<List<Article>> getSearchedNews() async {
    try {
      final response =
          await _httpService.getRequest('api/v1/article/getArticles');
      final parsedResponse = NewsResponse.fromJson(response.data);
      return parsedResponse.articles;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
