import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_lesson/core/widget/drawer.dart';
import 'package:getx_lesson/pages/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineView extends StatelessWidget {
  const NewsHeadlineView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsHeadlineController>();

    return Scaffold(
      appBar: AppBar(
        title: Text('News Headlines'),
      ),
      drawer: getDrawer(),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.articles.length,
                itemBuilder: (context, index) {
                  final article = controller.articles[index];
                  return ListTile(
                    title: Text(article.title),
                    subtitle: Text(article.description),
                  );
                },
              );
      }),
    );
  }
}
