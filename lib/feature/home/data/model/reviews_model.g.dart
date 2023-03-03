// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsModel _$$_ReviewsModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      image: json['image'] as String?,
      content: json['content'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'image': instance.image,
      'content': instance.content,
      'title': instance.title,
    };
