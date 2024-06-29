import 'package:flutter/material.dart';
import 'package:newsapp/Lists/News_list_view.dart';
import 'package:newsapp/Models/article_model.dart';
import 'package:newsapp/Services/news_services.dart';


// ignore: must_be_immutable, camel_case_types
class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({super.key, required this.category});

  final String category;
  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}
  
// ignore: camel_case_types
class _newsListViewBuilderState extends State<newsListViewBuilder> {
  var articles;
  @override
  void initState() {
    articles = NewsServices().getGeneralNews(
      category: widget.category,
    );
    super.initState();
  }

  // Future<List<ArticleModel>> articless = NewsServices().getGeneralNews();
  // note => If we Use this in the Stateless widget is correct also
  @override
  Widget build(BuildContext context) {
    //FutureBuilder=> this Widget use When Fetch data From The Internet
    return FutureBuilder<List<ArticleModel>>(
        //this for identify the return data are type of <List<ArticleModel>>
        future: articles,
        builder: (context, snapshot) {
          //snapshot is a container of the data that Return From The Request
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: Text("Try Later")),
            );
          } else {
            return const SliverToBoxAdapter(
              child: SizedBox(
                height: 500,
                child: Center(child: CircularProgressIndicator()),
              ),
            );
          }
        });
  }
}
