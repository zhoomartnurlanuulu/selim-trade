import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
 required int id,
    @JsonKey(name: 'author_name') required String name,
   @JsonKey(name: 'author_surname') required String surname,
   @JsonKey(name: 'author_image') required String image,
    required String content,
    @JsonKey(name: 'gate_title') required String title,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}
