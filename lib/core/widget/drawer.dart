import 'package:flutter/material.dart';
import 'package:get/get.dart';

getDrawer() {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text('News Headlines'),
          onTap: () {
            Get.toNamed('/home');
          },
          leading: Icon(Icons.article),
        ),
        ListTile(
          title: Text('Search News'),
          onTap: () {
            Get.toNamed('/search');
          },
          leading: Icon(Icons.search),
        ),
      ],
    ),
  );
}
