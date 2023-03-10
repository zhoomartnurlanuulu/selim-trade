import 'package:selim_trade/feature/home/data/model/social_media_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/social_media_repo.dart';

class SocialMediaUseCase {
  SocialMediaUseCase({required this.repo});
  final SocialMediaRepo repo;
  Future<List<SocialMediaModel>> getSocial() async {
    try {
      return await repo.getSocial();
    } catch (e) {
      rethrow;
    }
  }
}
