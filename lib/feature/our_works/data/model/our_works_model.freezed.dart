// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_works_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OurWorksModel _$OurWorksModelFromJson(Map<String, dynamic> json) {
  return _OurWorksModel.fromJson(json);
}

/// @nodoc
mixin _$OurWorksModel {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OurWorksModelCopyWith<OurWorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurWorksModelCopyWith<$Res> {
  factory $OurWorksModelCopyWith(
          OurWorksModel value, $Res Function(OurWorksModel) then) =
      _$OurWorksModelCopyWithImpl<$Res, OurWorksModel>;
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class _$OurWorksModelCopyWithImpl<$Res, $Val extends OurWorksModel>
    implements $OurWorksModelCopyWith<$Res> {
  _$OurWorksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OurWorksModelCopyWith<$Res>
    implements $OurWorksModelCopyWith<$Res> {
  factory _$$_OurWorksModelCopyWith(
          _$_OurWorksModel value, $Res Function(_$_OurWorksModel) then) =
      __$$_OurWorksModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class __$$_OurWorksModelCopyWithImpl<$Res>
    extends _$OurWorksModelCopyWithImpl<$Res, _$_OurWorksModel>
    implements _$$_OurWorksModelCopyWith<$Res> {
  __$$_OurWorksModelCopyWithImpl(
      _$_OurWorksModel _value, $Res Function(_$_OurWorksModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_OurWorksModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OurWorksModel implements _OurWorksModel {
  const _$_OurWorksModel({this.id, this.image});

  factory _$_OurWorksModel.fromJson(Map<String, dynamic> json) =>
      _$$_OurWorksModelFromJson(json);

  @override
  final int? id;
  @override
  final String? image;

  @override
  String toString() {
    return 'OurWorksModel(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OurWorksModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OurWorksModelCopyWith<_$_OurWorksModel> get copyWith =>
      __$$_OurWorksModelCopyWithImpl<_$_OurWorksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OurWorksModelToJson(
      this,
    );
  }
}

abstract class _OurWorksModel implements OurWorksModel {
  const factory _OurWorksModel({final int? id, final String? image}) =
      _$_OurWorksModel;

  factory _OurWorksModel.fromJson(Map<String, dynamic> json) =
      _$_OurWorksModel.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_OurWorksModelCopyWith<_$_OurWorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}
