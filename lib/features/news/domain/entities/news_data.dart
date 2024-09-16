import 'package:cyberapp/features/news/data/data.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

part 'news_data.g.dart';

@HiveType(typeId: 5)
class NewsData extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final String author;
  @HiveField(5)
  final String urlPath;

  const NewsData(
      {required this.id,
      required this.title,
      required this.description,
      required this.date,
      required this.author,
      required this.urlPath});

  factory NewsData.fromDto(NewsDataDto dto) {
    return NewsData(
        id: const Uuid().v4(),
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
