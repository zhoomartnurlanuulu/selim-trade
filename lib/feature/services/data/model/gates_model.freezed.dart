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
  String get image => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<GatesType> get types => throw _privateConstructorUsedError;

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
  $Res call(
      {int id,
      String title,
      String image,
      String content,
      List<GatesType> types});
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
    Object? image = null,
    Object? content = null,
    Object? types = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<GatesType>,
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
  $Res call(
      {int id,
      String title,
      String image,
      String content,
      List<GatesType> types});
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
    Object? image = null,
    Object? content = null,
    Object? types = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<GatesType>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GatesModel implements _GatesModel {
  const _$_GatesModel(
      {required this.id,
      required this.title,
      required this.image,
      required this.content,
      required final List<GatesType> types})
      : _types = types;

  factory _$_GatesModel.fromJson(Map<String, dynamic> json) =>
      _$$_GatesModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String image;
  @override
  final String content;
  final List<GatesType> _types;
  @override
  List<GatesType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'GatesModel(id: $id, title: $title, image: $image, content: $content, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GatesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, content,
      const DeepCollectionEquality().hash(_types));

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
      required final String image,
      required final String content,
      required final List<GatesType> types}) = _$_GatesModel;

  factory _GatesModel.fromJson(Map<String, dynamic> json) =
      _$_GatesModel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get image;
  @override
  String get content;
  @override
  List<GatesType> get types;
  @override
  @JsonKey(ignore: true)
  _$$_GatesModelCopyWith<_$_GatesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GatesType _$GatesTypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$GatesType {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get gate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GatesTypeCopyWith<GatesType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatesTypeCopyWith<$Res> {
  factory $GatesTypeCopyWith(GatesType value, $Res Function(GatesType) then) =
      _$GatesTypeCopyWithImpl<$Res, GatesType>;
  @useResult
  $Res call({int id, String title, String content, String image, int gate});
}

/// @nodoc
class _$GatesTypeCopyWithImpl<$Res, $Val extends GatesType>
    implements $GatesTypeCopyWith<$Res> {
  _$GatesTypeCopyWithImpl(this._value, this._then);

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
    Object? gate = null,
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
      gate: null == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeCopyWith<$Res> implements $GatesTypeCopyWith<$Res> {
  factory _$$_TypeCopyWith(_$_Type value, $Res Function(_$_Type) then) =
      __$$_TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String content, String image, int gate});
}

/// @nodoc
class __$$_TypeCopyWithImpl<$Res> extends _$GatesTypeCopyWithImpl<$Res, _$_Type>
    implements _$$_TypeCopyWith<$Res> {
  __$$_TypeCopyWithImpl(_$_Type _value, $Res Function(_$_Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? image = null,
    Object? gate = null,
  }) {
    return _then(_$_Type(
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
      gate: null == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type implements _Type {
  const _$_Type(
      {required this.id,
      required this.title,
      required this.content,
      required this.image,
      required this.gate});

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String image;
  @override
  final int gate;

  @override
  String toString() {
    return 'GatesType(id: $id, title: $title, content: $content, image: $image, gate: $gate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Type &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.gate, gate) || other.gate == gate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, image, gate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeCopyWith<_$_Type> get copyWith =>
      __$$_TypeCopyWithImpl<_$_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(
      this,
    );
  }
}

abstract class _Type implements GatesType {
  const factory _Type(
      {required final int id,
      required final String title,
      required final String content,
      required final String image,
      required final int gate}) = _$_Type;

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get image;
  @override
  int get gate;
  @override
  @JsonKey(ignore: true)
  _$$_TypeCopyWith<_$_Type> get copyWith => throw _privateConstructorUsedError;
}
