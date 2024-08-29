import 'package:flutter/material.dart';
import 'package:getx_lesson/pages/detail/binding/detail_binding.dart';
import 'package:getx_lesson/pages/home/binding/home_binding.dart';
import 'package:getx_lesson/pages/home/view/home.dart';
import 'package:get/get.dart';

import 'pages/detail/view/detail.dart';

void main() {
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
            name: "/home", page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(
          name: "/detail",
          page: () => DetailScreen(),
          binding: DetailBinding(),
        ),
      ],
      initialRoute: "/home",
    );
  }
}
