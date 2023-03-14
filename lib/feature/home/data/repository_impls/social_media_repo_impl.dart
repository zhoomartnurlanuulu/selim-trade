import 'package:dio/dio.dart';
import 'package:selim_trade/feature/home/data/model/social_media_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/social_media_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class SocialMediaRepoImpl implements SocialMediaRepo {
  SocialMediaRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<List<SocialMediaModel>> getSocial() async {
    try {
      final response = await dio.get('social-media/');
      return response.data
          .map<SocialMediaModel>((e) => SocialMediaModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
