// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gates_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GatesModel _$GatesModelFromJson(Map<String, dynamic> json) {
  return _GatesModel.fromJson(json);
}

/// @nodoc
mixin _$GatesModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GatesModelCopyWith<GatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatesModelCopyWith<$Res> {
  factory $GatesModelCopyWith(
          GatesModel value, $Res Function(GatesModel) then) =
      _$GatesModelCopyWithImpl<$Res, GatesModel>;
  @useResult
  $Res call({int id, String title, String content, String image});
}

/// @nodoc
class _$GatesModelCopyWithImpl<$Res, $Val extends GatesModel>
    implements $GatesModelCopyWith<$Res> {
  _$GatesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? image = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GatesModelCopyWith<$Res>
    implements $GatesModelCopyWith<$Res> {
  factory _$$_GatesModelCopyWith(
          _$_GatesModel value, $Res Function(_$_GatesModel) then) =
      __$$_GatesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content, String image});
}

/// @nodoc
class __$$_GatesModelCopyWithImpl<$Res>
    extends _$GatesModelCopyWithImpl<$Res, _$_GatesModel>
    implements _$$_GatesModelCopyWith<$Res> {
  __$$_GatesModelCopyWithImpl(
      _$_GatesModel _value, $Res Function(_$_GatesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? image = null,
  }) {
    return _then(_$_GatesModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GatesModel implements _GatesModel {
  const _$_GatesModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.image});

  factory _$_GatesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GatesModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String image;

  @override
  String toString() {
    return 'GatesModel(id: $id, title: $title, content: $content, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GatesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GatesModelCopyWith<_$_GatesModel> get copyWith =>
      __$$_GatesModelCopyWithImpl<_$_GatesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GatesModelToJson(
      this,
    );
  }
}

abstract class _GatesModel implements GatesModel {
  const factory _GatesModel(
      {required final int id,
      required final String title,
      required final String content,
      required final String image}) = _$_GatesModel;

  factory _GatesModel.fromJson(Map<String, dynamic> json) =
      _$_GatesModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_GatesModelCopyWith<_$_GatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
