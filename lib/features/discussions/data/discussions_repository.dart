import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

class DiscussionsRepository {
  final Box<Discussion> discussionsBox;

  DiscussionsRepository({required this.discussionsBox});

  Future<void> createDiscussion(
      User user, String topic, String description) async {
    final Discussion discussion = Discussion(
        user: GetIt.I<User>(),
        topic: topic,
        description: description,
        date: DateTime.now());
    await discussionsBox.put(discussion.id, discussion);
  }

  Future<void> deleteDiscussion(String id) async {
    await discussionsBox.delete(id);
  }

  Future<List<Discussion>> getDiscussions() async {
    return discussionsBox.values.toList();
  }
}
