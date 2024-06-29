import 'package:flutter/material.dart';
import 'package:newsapp/Lists/news_list_view_builder.dart';

// ignore: must_be_immutable
class CategoryView extends StatelessWidget {
   CategoryView({super.key , required this.category});
  String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              newsListViewBuilder(
                category: category,
              )
            ],
          ),
        ),
      ),
    );
  }
}
