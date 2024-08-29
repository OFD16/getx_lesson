import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lesson/pages/home/controller/home_controller.dart';
import 'package:getx_lesson/services/api_service.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final apiServive = Get.find<ApiService>();
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
            onPressed: () {
              Get.back();
              // print(apiServive.fetchTextFromAPi());
              // print(homeController.count);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${homeController.count}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
              ),
            )
          ],
        ),
      ),
    );
  }
}
