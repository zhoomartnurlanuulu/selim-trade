// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      titleImage: json['title_image'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => NewsImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt.toIso8601String(),
      'title_image': instance.titleImage,
      'images': instance.images,
    };

_$_NewsImage _$$_NewsImageFromJson(Map<String, dynamic> json) => _$_NewsImage(
      id: json['id'] as int?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_NewsImageToJson(_$_NewsImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
