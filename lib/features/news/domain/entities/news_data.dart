import 'package:cyberapp/features/news/data/data.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class NewsData extends Equatable {
  final String title;
  final String description;
  final DateTime date;
  final String author;

  final String urlPath;

  const NewsData(
      {required this.title,
      required this.description,
      required this.date,
      required this.author,
      required this.urlPath});

  factory NewsData.fromDto(NewsDataDto dto) {
    return NewsData(
        title: dto.title,
        description: dto.description,
        date: _dateTimeFromJson(dto.date),
        author: dto.author,
        urlPath: dto.urlPath);
  }

  static DateTime _dateTimeFromJson(String dateString) {
    final date = DateFormat('MMMM d, y', 'en_US').parse(dateString);
    return date;
  }

  static String _dateTimeToJson(DateTime dateTime) {
    final DateFormat formatter = DateFormat('MMMM d, y', 'en_US');
    final date = formatter.format(dateTime);
    return date;
  }
  String get dateToString {
    return _dateTimeToJson(date);
  }

  @override
  List<Object?> get props => [title, description, date, author, urlPath];
}
