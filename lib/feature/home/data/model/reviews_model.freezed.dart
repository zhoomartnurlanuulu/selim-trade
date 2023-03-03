// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsModelCopyWith<ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res, ReviewsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? surname,
      String? image,
      String? content,
      String? title});
}

/// @nodoc
class _$ReviewsModelCopyWithImpl<$Res, $Val extends ReviewsModel>
    implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? image = freezed,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$$_ReviewsModelCopyWith(
          _$_ReviewsModel value, $Res Function(_$_ReviewsModel) then) =
      __$$_ReviewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? surname,
      String? image,
      String? content,
      String? title});
}

/// @nodoc
class __$$_ReviewsModelCopyWithImpl<$Res>
    extends _$ReviewsModelCopyWithImpl<$Res, _$_ReviewsModel>
    implements _$$_ReviewsModelCopyWith<$Res> {
  __$$_ReviewsModelCopyWithImpl(
      _$_ReviewsModel _value, $Res Function(_$_ReviewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? image = freezed,
    Object? content = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_ReviewsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsModel implements _ReviewsModel {
  const _$_ReviewsModel(
      {this.id, this.name, this.surname, this.image, this.content, this.title});

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? image;
  @override
  final String? content;
  @override
  final String? title;

  @override
  String toString() {
    return 'ReviewsModel(id: $id, name: $name, surname: $surname, image: $image, content: $content, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, surname, image, content, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      __$$_ReviewsModelCopyWithImpl<_$_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsModelToJson(
      this,
    );
  }
}

abstract class _ReviewsModel implements ReviewsModel {
  const factory _ReviewsModel(
      {final int? id,
      final String? name,
      final String? surname,
      final String? image,
      final String? content,
      final String? title}) = _$_ReviewsModel;

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get image;
  @override
  String? get content;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
