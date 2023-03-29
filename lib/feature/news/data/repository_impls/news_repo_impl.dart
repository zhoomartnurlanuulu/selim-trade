import 'package:dio/dio.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/domain/repositories/news_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class NewsRepoImpl implements NewsRepo {
  NewsRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<NewsModel> getNews(int currentPage) async {
    try {
      final response = await dio.get('news/?p=$currentPage');
      return NewsModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
