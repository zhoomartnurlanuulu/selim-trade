import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_time_model.freezed.dart';
part 'work_time_model.g.dart';

@freezed
class WorkTimeModel with _$WorkTimeModel {
  const factory WorkTimeModel({
    required int id,
    @JsonKey(name: 'from_weekday') required String fromWeekday,
    @JsonKey(name: 'to_weekday') required String toWeekday,
    @JsonKey(name: 'from_hour') required String fromHour,
    @JsonKey(name: 'to_hour') required String toHour,
  }) = _WorkTimeModel;

  factory WorkTimeModel.fromJson(Map<String, dynamic> json) =>
      _$WorkTimeModelFromJson(json);
}
