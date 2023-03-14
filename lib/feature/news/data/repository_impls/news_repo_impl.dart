import 'package:dio/dio.dart';
import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/domain/repositories/news_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class NewsRepoImpl implements NewsRepo {
  NewsRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<List<NewsModel>> getNews() async {
    try {
      final response = await dio.get('news/');
      return response.data
          .map<NewsModel>((e) => NewsModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
