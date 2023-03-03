import 'package:freezed_annotation/freezed_annotation.dart';
part 'questions_model.freezed.dart';
part 'questions_model.g.dart';

@freezed
class QuestionsModel with _$QuestionsModel {
  factory QuestionsModel({
    String? username,
    String? phone,
    String? content,
  }) = _QuestionsModel;

  factory QuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionsModelFromJson(json);
}
