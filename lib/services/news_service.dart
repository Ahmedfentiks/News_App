import 'package:dio/dio.dart';
import 'package:news_app/models/news_data.dart';

class NewsService {
  final dio = Dio();
  Future<List<News_Data>> getnews([String category = 'general']) async {
    try {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=0cb5b62fea5f47f39b55fc6b5a59c45f&category=$category');
  Map<String, dynamic> response_map = response.data;
  List<dynamic> articles = response_map['articles'];
  List<News_Data> newsdata = [];
  for (var article in articles) {
    newsdata.add(
      News_Data(
        image_path: article['urlToImage'],
        description: article['description'],
        main_title: article['title'],
      ),
    );
  }
  return newsdata;
} on Exception catch (e) {
  return [];
}
  }
}
