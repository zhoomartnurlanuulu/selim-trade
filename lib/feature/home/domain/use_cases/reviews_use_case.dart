import 'package:selim_trade/feature/home/data/model/reviews_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/reviews_repo.dart';

class ReviewsUseCase {
  ReviewsUseCase({required this.repo});
  ReviewsRepo repo;
  Future<List<ReviewsModel>> getReviews() async {
    try {
      return await repo.getReviews();
    } catch (e) {
      rethrow;
    }
  }
}
