import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';


part 'discussion.g.dart';

@HiveType(typeId: 0)
class Discussion extends Equatable implements Commentable {
  @HiveField(6)
  late final String id;
  @HiveField(0)
  final User user;
  @HiveField(1)
  final String topic;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final DateTime date;
  @HiveField(4, defaultValue: 0)
  final int likesCount;
  @HiveField(5, defaultValue: 0)
  final int dislikesCount;

  @override
  List<Object?> get props =>
      [user, topic, description, date, likesCount, dislikesCount];

//<editor-fold desc="Data Methods">
   Discussion({
    required this.user,
    required this.topic,
    required this.description,
    required this.date,
    this.likesCount = 0,
    this.dislikesCount = 0,
  }) {
    id = const Uuid().v4();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Discussion &&
          runtimeType == other.runtimeType &&
          user == other.user &&
          topic == other.topic &&
          description == other.description &&
          date == other.date &&
          likesCount == other.likesCount &&
          dislikesCount == other.dislikesCount);

  @override
  int get hashCode =>
      user.hashCode ^
      topic.hashCode ^
      description.hashCode ^
      date.hashCode ^
      likesCount.hashCode ^
      dislikesCount.hashCode;

  @override
  String toString() {
    return 'Discussion{' +
        ' user: $user,' +
        ' topic: $topic,' +
        ' description: $description,' +
        ' date: $date,' +
        ' likesCount: $likesCount,' +
        ' dislikesCount: $dislikesCount,' +
        '}';
  }

  Discussion copyWith({
    User? user,
    String? topic,
    String? description,
    DateTime? date,
    int? likesCount,
    int? dislikesCount,
  }) {
    return Discussion(
      user: user ?? this.user,
      topic: topic ?? this.topic,
      description: description ?? this.description,
      date: date ?? this.date,
      likesCount: likesCount ?? this.likesCount,
      dislikesCount: dislikesCount ?? this.dislikesCount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': this.user,
      'topic': this.topic,
      'description': this.description,
      'date': this.date,
      'likesCount': this.likesCount,
      'dislikesCount': this.dislikesCount,
    };
  }

  factory Discussion.fromMap(Map<String, dynamic> map) {
    return Discussion(
      user: map['user'] as User,
      topic: map['topic'] as String,
      description: map['description'] as String,
      date: map['date'] as DateTime,
      likesCount: map['likesCount'] as int,
      dislikesCount: map['dislikesCount'] as int,
    );
  }

//</editor-fold>
}
