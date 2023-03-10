import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required int id,
    required String title,
    required String content,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'title_image') required String titleImage,
    required List<NewsImage> images,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class NewsImage with _$NewsImage {
  const factory NewsImage({
    int? id,
    String? image,
  }) = _NewsImage;

  factory NewsImage.fromJson(Map<String, dynamic> json) =>
      _$NewsImageFromJson(json);
}
