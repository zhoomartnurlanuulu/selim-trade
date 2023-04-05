import 'package:freezed_annotation/freezed_annotation.dart';

part 'gates_model.freezed.dart';
part 'gates_model.g.dart';

@freezed
class GatesModel with _$GatesModel {
  const factory GatesModel({
    required int id,
    required String title,
    required String image,
    required String content,
    required List<GatesType> types,
  }) = _GatesModel;

  factory GatesModel.fromJson(Map<String, dynamic> json) =>
      _$GatesModelFromJson(json);
}

@freezed
class GatesType with _$GatesType {
  const factory GatesType({
    required int id,
    required String title,
    required String content,
    required String image,
    required int gate,
  }) = _Type;

  factory GatesType.fromJson(Map<String, dynamic> json) =>
      _$GatesTypeFromJson(json);
}
