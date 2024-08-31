import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getx_lesson/core/widget/drawer.dart';

class SearchNewsView extends StatelessWidget {
  const SearchNewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search News'),
      ),
      drawer: getDrawer(),
      body: Container(),
    );
  }
}
