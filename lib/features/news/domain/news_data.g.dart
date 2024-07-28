// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsData _$NewsDataFromJson(Map<String, dynamic> json) => NewsData(
      title: json['title'] as String,
      description: json['description'] as String,
      date: NewsData._dateTimeFromJson(json['date'] as String),
      author: json['author'] as String,
      urlPath: json['url_path'] as String,
    );

Map<String, dynamic> _$NewsDataToJson(NewsData instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': NewsData._dateTimeToJson(instance.date),
      'author': instance.author,
      'url_path': instance.urlPath,
    };
