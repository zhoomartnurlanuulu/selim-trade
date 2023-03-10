import 'package:selim_trade/components/social.dart';
import 'package:selim_trade/feature/home/data/model/social_media_model.dart';

abstract class SocialMediaRepo {
  Future<List<SocialMediaModel>> getSocial();
}
