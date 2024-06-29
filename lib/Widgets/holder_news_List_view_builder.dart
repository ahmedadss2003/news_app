// import 'package:flutter/material.dart';
// import 'package:newsapp/Lists/News_list_view.dart';
// import 'package:newsapp/Models/article_model.dart';
// import 'package:newsapp/Services/news_services.dart';

// class newsListViewBuilder extends StatefulWidget {
//   const newsListViewBuilder({
//     super.key,
//   });

//   @override
//   State<newsListViewBuilder> createState() => _newsListViewBuilderState();
// }

// class _newsListViewBuilderState extends State<newsListViewBuilder> {
//   bool isLoading = true;
//   List<ArticleModel> articles = [];

//   @override
//   void initState() {
//     getNews();
//     super.initState();
//   }

//   Future<void> getNews() async {
//     articles = await NewsServices().getGeneralNews();
//     setState(() {
//       isLoading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 500,
//               child: Center(child: CircularProgressIndicator()),
//             ),
//           )
//         :articles.isEmpty? 
//         const SliverToBoxAdapter(child: Center(child: Text("Try Later")),)
//         : NewsListView(
//             articles: articles,
//           );
//   }
// }