import 'package:selim_trade/feature/news/data/model/news_model.dart';

abstract class NewsRepo {
  Future<List<NewsModel>> getNews();
}