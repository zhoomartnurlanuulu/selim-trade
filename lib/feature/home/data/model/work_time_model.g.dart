// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkTimeModel _$$_WorkTimeModelFromJson(Map<String, dynamic> json) =>
    _$_WorkTimeModel(
      id: json['id'] as int,
      fromWeekday: json['from_weekday'] as String,
      toWeekday: json['to_weekday'] as String,
      fromHour: json['from_hour'] as String,
      toHour: json['to_hour'] as String,
    );

Map<String, dynamic> _$$_WorkTimeModelToJson(_$_WorkTimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_weekday': instance.fromWeekday,
      'to_weekday': instance.toWeekday,
      'from_hour': instance.fromHour,
      'to_hour': instance.toHour,
    };
