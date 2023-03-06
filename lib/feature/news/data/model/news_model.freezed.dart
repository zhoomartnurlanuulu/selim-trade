// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_image')
  String get titleImage => throw _privateConstructorUsedError;
  List<NewsImage>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'title_image') String titleImage,
      List<NewsImage>? images});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

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
    Object? createdAt = null,
    Object? titleImage = null,
    Object? images = freezed,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      titleImage: null == titleImage
          ? _value.titleImage
          : titleImage // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String content,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'title_image') String titleImage,
      List<NewsImage>? images});
}

/// @nodoc
class __$$_NewsModelCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$_NewsModel>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? createdAt = null,
    Object? titleImage = null,
    Object? images = freezed,
  }) {
    return _then(_$_NewsModel(
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      titleImage: null == titleImage
          ? _value.titleImage
          : titleImage // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<NewsImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModel implements _NewsModel {
  const _$_NewsModel(
      {required this.id,
      required this.title,
      required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'title_image') required this.titleImage,
      final List<NewsImage>? images})
      : _images = images;

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'title_image')
  final String titleImage;
  final List<NewsImage>? _images;
  @override
  List<NewsImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsModel(id: $id, title: $title, content: $content, createdAt: $createdAt, titleImage: $titleImage, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.titleImage, titleImage) ||
                other.titleImage == titleImage) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, createdAt,
      titleImage, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {required final int id,
      required final String title,
      required final String content,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'title_image') required final String titleImage,
      final List<NewsImage>? images}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'title_image')
  String get titleImage;
  @override
  List<NewsImage>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsImage _$NewsImageFromJson(Map<String, dynamic> json) {
  return _NewsImage.fromJson(json);
}

/// @nodoc
mixin _$NewsImage {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsImageCopyWith<NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsImageCopyWith<$Res> {
  factory $NewsImageCopyWith(NewsImage value, $Res Function(NewsImage) then) =
      _$NewsImageCopyWithImpl<$Res, NewsImage>;
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class _$NewsImageCopyWithImpl<$Res, $Val extends NewsImage>
    implements $NewsImageCopyWith<$Res> {
  _$NewsImageCopyWithImpl(this._value, this._then);

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
abstract class _$$_NewsImageCopyWith<$Res> implements $NewsImageCopyWith<$Res> {
  factory _$$_NewsImageCopyWith(
          _$_NewsImage value, $Res Function(_$_NewsImage) then) =
      __$$_NewsImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image});
}

/// @nodoc
class __$$_NewsImageCopyWithImpl<$Res>
    extends _$NewsImageCopyWithImpl<$Res, _$_NewsImage>
    implements _$$_NewsImageCopyWith<$Res> {
  __$$_NewsImageCopyWithImpl(
      _$_NewsImage _value, $Res Function(_$_NewsImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_NewsImage(
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
class _$_NewsImage implements _NewsImage {
  const _$_NewsImage({this.id, this.image});

  factory _$_NewsImage.fromJson(Map<String, dynamic> json) =>
      _$$_NewsImageFromJson(json);

  @override
  final int? id;
  @override
  final String? image;

  @override
  String toString() {
    return 'NewsImage(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsImageCopyWith<_$_NewsImage> get copyWith =>
      __$$_NewsImageCopyWithImpl<_$_NewsImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsImageToJson(
      this,
    );
  }
}

abstract class _NewsImage implements NewsImage {
  const factory _NewsImage({final int? id, final String? image}) = _$_NewsImage;

  factory _NewsImage.fromJson(Map<String, dynamic> json) =
      _$_NewsImage.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_NewsImageCopyWith<_$_NewsImage> get copyWith =>
      throw _privateConstructorUsedError;
}
