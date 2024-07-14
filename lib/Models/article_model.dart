
class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  // Source source;
  // this is default constructor
   ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
  // this is factory constructor 
  factory ArticleModel.fromJson(json){
    return ArticleModel(
          image: json["urlToImage"],
          title: json["title"],
          subTitle: json["description"],
        ) ;
  }
}

// class Source {
//   String id;
//   String name;
//   Source({required this.name, required this.id});
// }
