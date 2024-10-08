import 'package:get/get.dart';
import 'package:getx_lesson/core/repository/news_repo_impl.dart';

import '../controller/news_headline_controller.dart';

class NewsHeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NewsRepoImpl());
    Get.put(NewsHeadlineController());
  }
}
