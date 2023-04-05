// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) {
  return _ServicesModel.fromJson(json);
}

/// @nodoc
mixin _$ServicesModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesModelCopyWith<ServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesModelCopyWith<$Res> {
  factory $ServicesModelCopyWith(
          ServicesModel value, $Res Function(ServicesModel) then) =
      _$ServicesModelCopyWithImpl<$Res, ServicesModel>;
  @useResult
  $Res call({int id, String title, String icon});
}

/// @nodoc
class _$ServicesModelCopyWithImpl<$Res, $Val extends ServicesModel>
    implements $ServicesModelCopyWith<$Res> {
  _$ServicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesModelCopyWith<$Res>
    implements $ServicesModelCopyWith<$Res> {
  factory _$$_ServicesModelCopyWith(
          _$_ServicesModel value, $Res Function(_$_ServicesModel) then) =
      __$$_ServicesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String icon});
}

/// @nodoc
class __$$_ServicesModelCopyWithImpl<$Res>
    extends _$ServicesModelCopyWithImpl<$Res, _$_ServicesModel>
    implements _$$_ServicesModelCopyWith<$Res> {
  __$$_ServicesModelCopyWithImpl(
      _$_ServicesModel _value, $Res Function(_$_ServicesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_$_ServicesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServicesModel implements _ServicesModel {
  const _$_ServicesModel(
      {required this.id, required this.title, required this.icon});

  factory _$_ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ServicesModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String icon;

  @override
  String toString() {
    return 'ServicesModel(id: $id, title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesModelCopyWith<_$_ServicesModel> get copyWith =>
      __$$_ServicesModelCopyWithImpl<_$_ServicesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicesModelToJson(
      this,
    );
  }
}

abstract class _ServicesModel implements ServicesModel {
  const factory _ServicesModel(
      {required final int id,
      required final String title,
      required final String icon}) = _$_ServicesModel;

  factory _ServicesModel.fromJson(Map<String, dynamic> json) =
      _$_ServicesModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesModelCopyWith<_$_ServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
