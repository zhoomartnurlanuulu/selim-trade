import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/domain/repositories/news_repo.dart';

class NewsUseCase {
  NewsUseCase({required this.repo});
  final NewsRepo repo;
  Future<NewsModel> getNews(int currentPage,int pageSize) async {
    try {
      return repo.getNews(currentPage,pageSize);
    } catch (e) {
      rethrow;
    }
  }
}
