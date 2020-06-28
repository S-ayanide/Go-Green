import 'package:go_green/model/articles.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_config/flutter_config.dart';

class ClimateData {
  List<ArticleModel> climateNews = [];

  Future<void> getClimateNews() async {
    String url =
        "http://newsapi.org/v2/everything?q=climate&from=2020-05-28&sortBy=publishedAt&apiKey=${FlutterConfig.get('API_KEY')}";

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element["title"],
            author: element["author"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
            content: element["content"],
          );

          climateNews.add(articleModel);
        }
      });
    }
  }
}
