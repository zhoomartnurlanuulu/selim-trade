// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionsModel _$QuestionsModelFromJson(Map<String, dynamic> json) {
  return _QuestionsModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionsModel {
  String? get username => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsModelCopyWith<QuestionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsModelCopyWith<$Res> {
  factory $QuestionsModelCopyWith(
          QuestionsModel value, $Res Function(QuestionsModel) then) =
      _$QuestionsModelCopyWithImpl<$Res, QuestionsModel>;
  @useResult
  $Res call({String? username, String? phone, String? content});
}

/// @nodoc
class _$QuestionsModelCopyWithImpl<$Res, $Val extends QuestionsModel>
    implements $QuestionsModelCopyWith<$Res> {
  _$QuestionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? phone = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionsModelCopyWith<$Res>
    implements $QuestionsModelCopyWith<$Res> {
  factory _$$_QuestionsModelCopyWith(
          _$_QuestionsModel value, $Res Function(_$_QuestionsModel) then) =
      __$$_QuestionsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? phone, String? content});
}

/// @nodoc
class __$$_QuestionsModelCopyWithImpl<$Res>
    extends _$QuestionsModelCopyWithImpl<$Res, _$_QuestionsModel>
    implements _$$_QuestionsModelCopyWith<$Res> {
  __$$_QuestionsModelCopyWithImpl(
      _$_QuestionsModel _value, $Res Function(_$_QuestionsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? phone = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_QuestionsModel(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionsModel implements _QuestionsModel {
  _$_QuestionsModel({this.username, this.phone, this.content});

  factory _$_QuestionsModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionsModelFromJson(json);

  @override
  final String? username;
  @override
  final String? phone;
  @override
  final String? content;

  @override
  String toString() {
    return 'QuestionsModel(username: $username, phone: $phone, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionsModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, phone, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionsModelCopyWith<_$_QuestionsModel> get copyWith =>
      __$$_QuestionsModelCopyWithImpl<_$_QuestionsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionsModelToJson(
      this,
    );
  }
}

abstract class _QuestionsModel implements QuestionsModel {
  factory _QuestionsModel(
      {final String? username,
      final String? phone,
      final String? content}) = _$_QuestionsModel;

  factory _QuestionsModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionsModel.fromJson;

  @override
  String? get username;
  @override
  String? get phone;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionsModelCopyWith<_$_QuestionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
