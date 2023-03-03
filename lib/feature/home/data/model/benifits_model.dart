import 'package:freezed_annotation/freezed_annotation.dart';

part 'benifits_model.freezed.dart';
part 'benifits_model.g.dart';

@freezed
class BenifitsModel with _$BenifitsModel {
  const factory BenifitsModel({
    int? id,
    String? title,
    String? icon,
  }) = _BenifitsModel;

  factory BenifitsModel.fromJson(Map<String, dynamic> json) =>
      _$BenifitsModelFromJson(json);
}
