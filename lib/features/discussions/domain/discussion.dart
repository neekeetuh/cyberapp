import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'discussion.g.dart';

@HiveType(typeId: 0)
class Discussion extends Equatable implements Commentable {
  @HiveField(6)
  final String id;
  @HiveField(0)
  final String userUid;
  @HiveField(1)
  final String topic;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final int likesCount;
  @HiveField(5)
  final int dislikesCount;

  @override
  List<Object?> get props =>
      [userUid, topic, description, date, likesCount, dislikesCount];

//<editor-fold desc="Data Methods">
  const Discussion({
    required this.id,
    required this.userUid,
    required this.topic,
    required this.description,
    required this.date,
    this.likesCount = 0,
    this.dislikesCount = 0,
  });
//</editor-fold>
}
