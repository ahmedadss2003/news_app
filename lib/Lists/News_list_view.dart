import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Widgets/news_widget.dart';

// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
   NewsListView({super.key , required this.articles});

  // this is The State Of Widget
  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: articles.length,
              (context, index) {
                return NewsWidget(
                  articleModel: articles[index],
                );
              },
            ),
          );
  }
}
