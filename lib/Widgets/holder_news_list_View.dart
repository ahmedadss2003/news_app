// import 'package:flutter/material.dart';
// import 'package:newsapp/Models/article_model.dart';
// import 'package:newsapp/Services/news_services.dart';
// import 'package:newsapp/Widgets/news_widget.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   // this is The State Of Widget

//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getNews();
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
//               height: 500, // Adjust the height to your needs
//               child: Center(child: CircularProgressIndicator()),
//             ),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articles.length,
//               (context, index) {
//                 return NewsWidget(
//                   articleModel: articles[index],
//                 );
//               },
//             ),
//           );
//   }
// }
