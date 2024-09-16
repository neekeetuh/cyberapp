// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDataDto _$NewsDataDtoFromJson(Map<String, dynamic> json) => NewsDataDto(
      title: json['title'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      author: json['author'] as String,
      urlPath: json['url_path'] as String,
    );

Map<String, dynamic> _$NewsDataDtoToJson(NewsDataDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'author': instance.author,
      'url_path': instance.urlPath,
    };
