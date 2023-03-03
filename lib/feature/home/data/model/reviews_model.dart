import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
    int? id,
    String? name,
    String? surname,
    String? image,
    String? content,
    String? title,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}
