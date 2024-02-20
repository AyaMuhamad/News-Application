import 'package:dio/dio.dart';

import '../Models/ArticleModel.dart';

class New_Services {
  final Dio dio;
  New_Services(this.dio);

  void getGeneralNews() async {
    Response response = await dio.get(
        "https://newsapi.org/v2/top-headlines?apiKey=0b3965878aad4336937c9e8dfac26955&country=eg&category=general");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articals = jsonData['articles'];
    List<ArticleModel> ArticalList = [];
    for (var i in articals) {
      ArticleModel art = new ArticleModel(
          image: i['urlToImage'],
          title: i['title'],
          subTitle: i['description']);
      ArticalList.add(art);
    }
    print(ArticalList);
  }
}
