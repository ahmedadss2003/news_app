import 'package:flutter/material.dart';
import 'package:newsapp/Models/article_model.dart';

// ignore: must_be_immutable
class NewsWidget extends StatelessWidget {
  NewsWidget({super.key, required this.articleModel});
  ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image(
            height: 220,
            // width: double.infinity,
            fit: BoxFit.fill,
            image: NetworkImage(
              articleModel.image ??
                  "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          articleModel.title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          articleModel.subTitle ?? "",
          style: const TextStyle(
            fontSize: 15,
            // fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
