import 'package:freezed_annotation/freezed_annotation.dart';

part 'our_works_model.freezed.dart';
part 'our_works_model.g.dart';

@freezed
class OurWorksModel with _$OurWorksModel {
  const factory OurWorksModel({
    int? id,
    String? image,
  }) = _OurWorksModel;

  factory OurWorksModel.fromJson(Map<String, dynamic> json) =>
      _$OurWorksModelFromJson(json);
}
