import 'package:freezed_annotation/freezed_annotation.dart';

part 'advantage_model.freezed.dart';
part 'advantage_model.g.dart';

@freezed
class AdvantageModel with _$AdvantageModel {
  const factory AdvantageModel({
    int? id,
    String? title,
    String? content,
    int? gate,
  }) = _AdvantageModel;

  factory AdvantageModel.fromJson(Map<String, dynamic> json) =>
      _$AdvantageModelFromJson(json);
}
