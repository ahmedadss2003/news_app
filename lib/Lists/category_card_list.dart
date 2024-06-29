import 'package:flutter/material.dart';
import 'package:newsapp/Models/category_model.dart';
import 'package:newsapp/Widgets/category_card.dart';


List<CategoryModel> lst = [
  CategoryModel(categoryName: "business", image: "assets/business.jpg"),
  CategoryModel(categoryName: "entertainment", image: "assets/entertaiment.avif"),
  CategoryModel(categoryName: "health", image: "assets/health.avif"),
  CategoryModel(categoryName: "science", image: "assets/health.avif"),
  CategoryModel(categoryName: "technology", image: "assets/technology.jpeg"),
  CategoryModel(categoryName: "sports", image: "assets/health.avif"),
  CategoryModel(categoryName: "general", image: "assets/health.avif"),
];


class CategoryCardList extends StatelessWidget {
  const CategoryCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
              height: 90,
              child: ListView.builder(
                itemCount: lst.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    category: lst[index],
                  );
                },
              ),
            );
  }
}