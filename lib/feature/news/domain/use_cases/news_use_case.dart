import 'package:selim_trade/feature/news/data/model/news_model.dart';
import 'package:selim_trade/feature/news/domain/repositories/news_repo.dart';

class NewsUseCase {
  NewsUseCase({required this.repo});
  final NewsRepo repo;
  Future<List<NewsModel>> getNews() async {
    try {
      return repo.getNews();
    } catch (e) {
      rethrow;
    }
  }
}
