// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'benifits_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BenifitsModel _$BenifitsModelFromJson(Map<String, dynamic> json) {
  return _BenifitsModel.fromJson(json);
}

/// @nodoc
mixin _$BenifitsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BenifitsModelCopyWith<BenifitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BenifitsModelCopyWith<$Res> {
  factory $BenifitsModelCopyWith(
          BenifitsModel value, $Res Function(BenifitsModel) then) =
      _$BenifitsModelCopyWithImpl<$Res, BenifitsModel>;
  @useResult
  $Res call({int id, String title, String icon});
}

/// @nodoc
class _$BenifitsModelCopyWithImpl<$Res, $Val extends BenifitsModel>
    implements $BenifitsModelCopyWith<$Res> {
  _$BenifitsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_BenifitsModelCopyWith<$Res>
    implements $BenifitsModelCopyWith<$Res> {
  factory _$$_BenifitsModelCopyWith(
          _$_BenifitsModel value, $Res Function(_$_BenifitsModel) then) =
      __$$_BenifitsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String icon});
}

/// @nodoc
class __$$_BenifitsModelCopyWithImpl<$Res>
    extends _$BenifitsModelCopyWithImpl<$Res, _$_BenifitsModel>
    implements _$$_BenifitsModelCopyWith<$Res> {
  __$$_BenifitsModelCopyWithImpl(
      _$_BenifitsModel _value, $Res Function(_$_BenifitsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_$_BenifitsModel(
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
class _$_BenifitsModel implements _BenifitsModel {
  const _$_BenifitsModel(
      {required this.id, required this.title, required this.icon});

  factory _$_BenifitsModel.fromJson(Map<String, dynamic> json) =>
      _$$_BenifitsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String icon;

  @override
  String toString() {
    return 'BenifitsModel(id: $id, title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BenifitsModel &&
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
  _$$_BenifitsModelCopyWith<_$_BenifitsModel> get copyWith =>
      __$$_BenifitsModelCopyWithImpl<_$_BenifitsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BenifitsModelToJson(
      this,
    );
  }
}

abstract class _BenifitsModel implements BenifitsModel {
  const factory _BenifitsModel(
      {required final int id,
      required final String title,
      required final String icon}) = _$_BenifitsModel;

  factory _BenifitsModel.fromJson(Map<String, dynamic> json) =
      _$_BenifitsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_BenifitsModelCopyWith<_$_BenifitsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
