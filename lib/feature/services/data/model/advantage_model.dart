import 'package:freezed_annotation/freezed_annotation.dart';

part 'advantage_model.freezed.dart';
part 'advantage_model.g.dart';

@freezed
class AdvantageModel with _$AdvantageModel {
  const factory AdvantageModel({
    required int id,
    required String title,
    required String content,
    required int gate,
  }) = _AdvantageModel;

  factory AdvantageModel.fromJson(Map<String, dynamic> json) =>
      _$AdvantageModelFromJson(json);
}
