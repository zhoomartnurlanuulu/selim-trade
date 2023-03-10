import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_model.freezed.dart';
part 'phone_model.g.dart';

@freezed
class PhoneModel with _$PhoneModel {
  const factory PhoneModel({
    required int id,
    required String phone,
  }) = _PhoneModel;

  factory PhoneModel.fromJson(Map<String, dynamic> json) =>
      _$PhoneModelFromJson(json);
}
