import 'package:dio/dio.dart';
import 'package:newsapp/Models/article_model.dart';

class NewsServices {
  final dio = Dio();

  Future<List<ArticleModel>> getGeneralNews({required category}) async {
    try {
      Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apikey=94adbd69b23d46829f33552e32830cf1&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }

      return articleList;
    } catch (e) {
      return [];
    }
  }
}
