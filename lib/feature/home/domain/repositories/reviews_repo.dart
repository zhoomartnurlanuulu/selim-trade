import 'package:selim_trade/feature/home/data/model/reviews_model.dart';

abstract class ReviewsRepo {
  Future<List<ReviewsModel>> getReviews();
}
