import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'comment.g.dart';

@HiveType(typeId: 1)
class Comment extends Equatable {
  @HiveField(4)
  late final String id;
  @HiveField(0)
  final String userUid;
  @HiveField(1)
  final Commentable topic;
  @HiveField(2)
  final String text;
  @HiveField(3)
  late final DateTime date;

  @override
  List<Object?> get props => [userUid, topic, text, date];

//<editor-fold desc="Data Methods">
  Comment({
    String? id,
    required this.userUid,
    required this.topic,
    required this.text,
    DateTime? date,
  }) {
    id = const Uuid().v4();
    date = DateTime.now();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Comment &&
          runtimeType == other.runtimeType &&
          userUid == other.userUid &&
          topic == other.topic &&
          text == other.text &&
          date == other.date);

  @override
  int get hashCode =>
      userUid.hashCode ^ topic.hashCode ^ text.hashCode ^ date.hashCode;

  @override
  String toString() {
    return 'Comment{' +
        ' user: $userUid,' +
        ' topic: $topic,' +
        ' text: $text,' +
        ' date: $date,' +
        '}';
  }

  Comment copyWith({
    String? id,
    String? userUid,
    Commentable? topic,
    String? text,
    DateTime? date,
  }) {
    return Comment(
      id: id ?? this.id,
      userUid: userUid ?? this.userUid,
      topic: topic ?? this.topic,
      text: text ?? this.text,
      date: date ?? this.date,
    );
  }
//</editor-fold>
}
