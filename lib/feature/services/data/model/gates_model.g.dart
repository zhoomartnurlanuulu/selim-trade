// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GatesModel _$$_GatesModelFromJson(Map<String, dynamic> json) =>
    _$_GatesModel(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      content: json['content'] as String,
      types: (json['types'] as List<dynamic>)
          .map((e) => GatesType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GatesModelToJson(_$_GatesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'content': instance.content,
      'types': instance.types,
    };

_$_Type _$$_TypeFromJson(Map<String, dynamic> json) => _$_Type(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      image: json['image'] as String,
      gate: json['gate'] as int,
    );

Map<String, dynamic> _$$_TypeToJson(_$_Type instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'image': instance.image,
      'gate': instance.gate,
    };
