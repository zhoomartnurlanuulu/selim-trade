import 'package:dio/dio.dart';
import 'package:selim_trade/core/constants/api_token.dart';
import 'package:selim_trade/feature/home/data/model/reviews_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/reviews_repo.dart';
import 'package:selim_trade/server/catch_exception.dart';

class ReviewsRepoImpl implements ReviewsRepo {
  ReviewsRepoImpl({required this.dio});

  Dio dio;
  @override
  Future<List<ReviewsModel>> getReviews() async {
    try {
      final response = await dio.get(
        '/selim/reviews/',
        options: Options(
          headers: {
            "token": " Bearer $apiToken",
          },
        ),
      );
      return response.data
          .map<ReviewsModel>((e) => ReviewsModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
