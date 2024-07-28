import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'news_data.g.dart';

@JsonSerializable()
class NewsData extends Equatable {
  const NewsData({
    required this.title,
    required this.description,
    required this.date,
    required this.author,
    required this.urlPath,
  });

  factory NewsData.fromJson(Map<String, dynamic> json) {
    return _$NewsDataFromJson(json);
  }

  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  final DateTime date;
  @JsonKey(name: 'author')
  final String author;

  @JsonKey(name: 'url_path')
  final String urlPath;

  static DateTime _dateTimeFromJson(String dateString) {
    final date = DateFormat('MMMM d, y', 'en_US').parse(dateString);
    return date;
  }

  static String _dateTimeToJson(DateTime dateTime) {
    final DateFormat formatter = DateFormat('MMMM d, y', 'en_US');
    final date = formatter.format(dateTime);
    return date;
  }

  String get dateToString{
    return _dateTimeToJson(date);
  }

  Map<String, dynamic> toJson() => _$NewsDataToJson(this);

  @override
  List<Object?> get props => [title, description, date, author, urlPath];
}
