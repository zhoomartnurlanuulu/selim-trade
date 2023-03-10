// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkTimeModel _$WorkTimeModelFromJson(Map<String, dynamic> json) {
  return _WorkTimeModel.fromJson(json);
}

/// @nodoc
mixin _$WorkTimeModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_weekday')
  String get fromWeekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_weekday')
  String get toWeekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_hour')
  String get fromHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_hour')
  String get toHour => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkTimeModelCopyWith<WorkTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkTimeModelCopyWith<$Res> {
  factory $WorkTimeModelCopyWith(
          WorkTimeModel value, $Res Function(WorkTimeModel) then) =
      _$WorkTimeModelCopyWithImpl<$Res, WorkTimeModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'from_weekday') String fromWeekday,
      @JsonKey(name: 'to_weekday') String toWeekday,
      @JsonKey(name: 'from_hour') String fromHour,
      @JsonKey(name: 'to_hour') String toHour});
}

/// @nodoc
class _$WorkTimeModelCopyWithImpl<$Res, $Val extends WorkTimeModel>
    implements $WorkTimeModelCopyWith<$Res> {
  _$WorkTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromWeekday = null,
    Object? toWeekday = null,
    Object? fromHour = null,
    Object? toHour = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fromWeekday: null == fromWeekday
          ? _value.fromWeekday
          : fromWeekday // ignore: cast_nullable_to_non_nullable
              as String,
      toWeekday: null == toWeekday
          ? _value.toWeekday
          : toWeekday // ignore: cast_nullable_to_non_nullable
              as String,
      fromHour: null == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String,
      toHour: null == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkTimeModelCopyWith<$Res>
    implements $WorkTimeModelCopyWith<$Res> {
  factory _$$_WorkTimeModelCopyWith(
          _$_WorkTimeModel value, $Res Function(_$_WorkTimeModel) then) =
      __$$_WorkTimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'from_weekday') String fromWeekday,
      @JsonKey(name: 'to_weekday') String toWeekday,
      @JsonKey(name: 'from_hour') String fromHour,
      @JsonKey(name: 'to_hour') String toHour});
}

/// @nodoc
class __$$_WorkTimeModelCopyWithImpl<$Res>
    extends _$WorkTimeModelCopyWithImpl<$Res, _$_WorkTimeModel>
    implements _$$_WorkTimeModelCopyWith<$Res> {
  __$$_WorkTimeModelCopyWithImpl(
      _$_WorkTimeModel _value, $Res Function(_$_WorkTimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromWeekday = null,
    Object? toWeekday = null,
    Object? fromHour = null,
    Object? toHour = null,
  }) {
    return _then(_$_WorkTimeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fromWeekday: null == fromWeekday
          ? _value.fromWeekday
          : fromWeekday // ignore: cast_nullable_to_non_nullable
              as String,
      toWeekday: null == toWeekday
          ? _value.toWeekday
          : toWeekday // ignore: cast_nullable_to_non_nullable
              as String,
      fromHour: null == fromHour
          ? _value.fromHour
          : fromHour // ignore: cast_nullable_to_non_nullable
              as String,
      toHour: null == toHour
          ? _value.toHour
          : toHour // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkTimeModel implements _WorkTimeModel {
  const _$_WorkTimeModel(
      {required this.id,
      @JsonKey(name: 'from_weekday') required this.fromWeekday,
      @JsonKey(name: 'to_weekday') required this.toWeekday,
      @JsonKey(name: 'from_hour') required this.fromHour,
      @JsonKey(name: 'to_hour') required this.toHour});

  factory _$_WorkTimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorkTimeModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'from_weekday')
  final String fromWeekday;
  @override
  @JsonKey(name: 'to_weekday')
  final String toWeekday;
  @override
  @JsonKey(name: 'from_hour')
  final String fromHour;
  @override
  @JsonKey(name: 'to_hour')
  final String toHour;

  @override
  String toString() {
    return 'WorkTimeModel(id: $id, fromWeekday: $fromWeekday, toWeekday: $toWeekday, fromHour: $fromHour, toHour: $toHour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkTimeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromWeekday, fromWeekday) ||
                other.fromWeekday == fromWeekday) &&
            (identical(other.toWeekday, toWeekday) ||
                other.toWeekday == toWeekday) &&
            (identical(other.fromHour, fromHour) ||
                other.fromHour == fromHour) &&
            (identical(other.toHour, toHour) || other.toHour == toHour));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, fromWeekday, toWeekday, fromHour, toHour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkTimeModelCopyWith<_$_WorkTimeModel> get copyWith =>
      __$$_WorkTimeModelCopyWithImpl<_$_WorkTimeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkTimeModelToJson(
      this,
    );
  }
}

abstract class _WorkTimeModel implements WorkTimeModel {
  const factory _WorkTimeModel(
          {required final int id,
          @JsonKey(name: 'from_weekday') required final String fromWeekday,
          @JsonKey(name: 'to_weekday') required final String toWeekday,
          @JsonKey(name: 'from_hour') required final String fromHour,
          @JsonKey(name: 'to_hour') required final String toHour}) =
      _$_WorkTimeModel;

  factory _WorkTimeModel.fromJson(Map<String, dynamic> json) =
      _$_WorkTimeModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'from_weekday')
  String get fromWeekday;
  @override
  @JsonKey(name: 'to_weekday')
  String get toWeekday;
  @override
  @JsonKey(name: 'from_hour')
  String get fromHour;
  @override
  @JsonKey(name: 'to_hour')
  String get toHour;
  @override
  @JsonKey(ignore: true)
  _$$_WorkTimeModelCopyWith<_$_WorkTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
