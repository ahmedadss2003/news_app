import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newsapp/Lists/category_card_list.dart';

import 'package:newsapp/Lists/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                  fontSize: 22, color: Color.fromARGB(255, 218, 135, 135)),
            ),
            Text(
              "App",
              style: TextStyle(fontSize: 22, color: Colors.purple),
            ),
          ],
        ),
      ),
      body:const  Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoryCardList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              newsListViewBuilder(
                category: "general",
              ),
            ],
          )),
    );
  }
}



      //  child: CustomScrollView(
      //     physics: BouncingScrollPhysics(),
      //     slivers: [
      //       SliverToBoxAdapter(child: CategoriesListView()),
      //       SliverToBoxAdapter(
      //         child: SizedBox(
      //           height: 32,
      //         ),
      //       ),
      //       NewsListViewBuilder(
      //         category: 'general',
      //       ),
      //     ],
      //   ),