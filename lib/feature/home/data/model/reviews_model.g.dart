// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewsModel _$$_ReviewsModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewsModel(
      id: json['id'] as int,
      name: json['author_name'] as String,
      surname: json['author_surname'] as String,
      image: json['author_image'] as String,
      content: json['content'] as String,
      title: json['gate_title'] as String,
    );

Map<String, dynamic> _$$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_name': instance.name,
      'author_surname': instance.surname,
      'author_image': instance.image,
      'content': instance.content,
      'gate_title': instance.title,
    };
