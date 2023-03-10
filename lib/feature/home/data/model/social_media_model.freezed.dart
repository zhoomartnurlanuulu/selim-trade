// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialMediaModel _$SocialMediaModelFromJson(Map<String, dynamic> json) {
  return _SocialMediaModel.fromJson(json);
}

/// @nodoc
mixin _$SocialMediaModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialMediaModelCopyWith<SocialMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialMediaModelCopyWith<$Res> {
  factory $SocialMediaModelCopyWith(
          SocialMediaModel value, $Res Function(SocialMediaModel) then) =
      _$SocialMediaModelCopyWithImpl<$Res, SocialMediaModel>;
  @useResult
  $Res call({int id, String title, String link, String icon});
}

/// @nodoc
class _$SocialMediaModelCopyWithImpl<$Res, $Val extends SocialMediaModel>
    implements $SocialMediaModelCopyWith<$Res> {
  _$SocialMediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? link = null,
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
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SocialMediaModelCopyWith<$Res>
    implements $SocialMediaModelCopyWith<$Res> {
  factory _$$_SocialMediaModelCopyWith(
          _$_SocialMediaModel value, $Res Function(_$_SocialMediaModel) then) =
      __$$_SocialMediaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String link, String icon});
}

/// @nodoc
class __$$_SocialMediaModelCopyWithImpl<$Res>
    extends _$SocialMediaModelCopyWithImpl<$Res, _$_SocialMediaModel>
    implements _$$_SocialMediaModelCopyWith<$Res> {
  __$$_SocialMediaModelCopyWithImpl(
      _$_SocialMediaModel _value, $Res Function(_$_SocialMediaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? link = null,
    Object? icon = null,
  }) {
    return _then(_$_SocialMediaModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
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
class _$_SocialMediaModel implements _SocialMediaModel {
  _$_SocialMediaModel(
      {required this.id,
      required this.title,
      required this.link,
      required this.icon});

  factory _$_SocialMediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocialMediaModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String link;
  @override
  final String icon;

  @override
  String toString() {
    return 'SocialMediaModel(id: $id, title: $title, link: $link, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialMediaModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, link, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocialMediaModelCopyWith<_$_SocialMediaModel> get copyWith =>
      __$$_SocialMediaModelCopyWithImpl<_$_SocialMediaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialMediaModelToJson(
      this,
    );
  }
}

abstract class _SocialMediaModel implements SocialMediaModel {
  factory _SocialMediaModel(
      {required final int id,
      required final String title,
      required final String link,
      required final String icon}) = _$_SocialMediaModel;

  factory _SocialMediaModel.fromJson(Map<String, dynamic> json) =
      _$_SocialMediaModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get link;
  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SocialMediaModelCopyWith<_$_SocialMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
