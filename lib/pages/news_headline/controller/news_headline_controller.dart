import 'package:get/get.dart';
import 'package:getx_lesson/core/model/article.dart';
import 'package:getx_lesson/core/repository/news_repo.dart';
import 'package:getx_lesson/core/repository/news_repo_impl.dart';

class NewsHeadlineController extends GetxController {
  late NewsRepo _newsRepo;

  NewsHeadlineController() {
    _newsRepo = Get.find<NewsRepoImpl>();
    loadNewsHeadline();
  }

  RxBool isLoading = false.obs;

  RxList<Article> articles = <Article>[].obs;

  loadNewsHeadline() async {
    showLoading();

    final result = await _newsRepo.getNewsHeadlines();

    hideLoading();

    if (result.isNotEmpty) {
      articles = result.obs;
    } else {
      print('No data available');
    }
  }

  showLoading() {
    isLoading.toggle();
  }

  hideLoading() {
    isLoading.toggle();
  }
}
