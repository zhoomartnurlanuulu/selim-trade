part of 'social_media_cubit.dart';

@freezed
class SocialMediaState with _$SocialMediaState {
  const factory SocialMediaState.initial() = _Initial;
  const factory SocialMediaState.success(List<SocialMediaModel> model) = _Success;
  const factory SocialMediaState.error(CatchException error) = _Error;
}
