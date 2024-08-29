import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_lesson/pages/detail/view/detail.dart';
import 'package:getx_lesson/pages/home/controller/home_controller.dart';
import 'package:getx_lesson/services/api_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${homeController.count}",
                  style: TextStyle(fontSize: 24),
                )),
            ElevatedButton(
              onPressed: () {
                // Get.to(DetailScreen());
                // Get.toNamed('/detail');
                // print(apiService.fetchTextFromAPi());
                homeController.increment();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Increment",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Get.to(DetailScreen());
                Get.toNamed('/detail');
                // print(apiService.fetchTextFromAPi());
                // homeController.increment();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Go to detail",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(title: "This is dialog");
                Get.snackbar("Title of Snacbar", "Message of Snacbar");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Open Dialog",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Title of Snacbar", "Message of Snacbar");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text(
                "Show Snacbar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
