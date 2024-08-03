import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'comment.g.dart';

@HiveType(typeId: 1)
class Comment extends Equatable {
  @HiveField(4)
  late final String id;
  @HiveField(0)
  final User user;
  @HiveField(1)
  final Commentable topic;
  @HiveField(2)
  final String text;
  @HiveField(3)
  final DateTime date;

  @override
  List<Object?> get props => [user, topic, text, date];

//<editor-fold desc="Data Methods">
  Comment({
    required this.user,
    required this.topic,
    required this.text,
    required this.date,
  }) {
    id = const Uuid().v4();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Comment &&
          runtimeType == other.runtimeType &&
          user == other.user &&
          topic == other.topic &&
          text == other.text &&
          date == other.date);

  @override
  int get hashCode =>
      user.hashCode ^ topic.hashCode ^ text.hashCode ^ date.hashCode;

  @override
  String toString() {
    return 'Comment{' +
        ' user: $user,' +
        ' topic: $topic,' +
        ' text: $text,' +
        ' date: $date,' +
        '}';
  }

  Comment copyWith({
    User? user,
    Commentable? topic,
    String? text,
    DateTime? date,
  }) {
    return Comment(
      user: user ?? this.user,
      topic: topic ?? this.topic,
      text: text ?? this.text,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': this.user,
      'topic': this.topic,
      'text': this.text,
      'date': this.date,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      user: map['user'] as User,
      topic: map['topic'] as Commentable,
      text: map['text'] as String,
      date: map['date'] as DateTime,
    );
  }

//</editor-fold>
}
