import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lesson/pages/news_headline/binding/news_headline_binding.dart';
import 'package:getx_lesson/pages/news_headline/view/news_headline_view.dart';
import 'package:getx_lesson/pages/search_news/view/search_news_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'pages/search_news/binding/search_news_binding.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      getPages: [
        GetPage(
            name: "/home",
            page: () => NewsHeadlineView(),
            binding: NewsHeadlineBinding()),
        GetPage(
            name: "/search",
            page: () => SearchNewsView(),
            binding: SearchNewsBinding()),
      ],
      initialRoute: "/home",
    );
  }
}
