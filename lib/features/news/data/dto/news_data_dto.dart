import 'package:json_annotation/json_annotation.dart';

part 'news_data_dto.g.dart';

@JsonSerializable()
class NewsDataDto {
  const NewsDataDto({
    required this.title,
    required this.description,
    required this.date,
    required this.author,
    required this.urlPath,
  });

  factory NewsDataDto.fromJson(Map<String, dynamic> json) {
    return _$NewsDataDtoFromJson(json);
  }

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'date')
  final String date;
  @JsonKey(name: 'author')
  final String author;

  @JsonKey(name: 'url_path')
  final String urlPath;

  Map<String, dynamic> toJson() => _$NewsDataDtoToJson(this);
}
