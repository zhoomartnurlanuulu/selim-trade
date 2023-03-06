import 'package:freezed_annotation/freezed_annotation.dart';

part 'gates_model.freezed.dart';
part 'gates_model.g.dart';

@freezed
class GatesModel with _$GatesModel {
  const factory GatesModel({
    required int id,
    required String title,
    required String content,
    required String image,
  }) = _GatesModel;

  factory GatesModel.fromJson(Map<String, dynamic> json) =>
      _$GatesModelFromJson(json);
}
