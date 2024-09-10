import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

class DiscussionsRepository implements DiscussionsRepositoryInterface {
  final Box<Discussion> discussionsBox;

  DiscussionsRepository({required this.discussionsBox});

  @override
  Future<void> createDiscussion(String topic, String description) async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      final Discussion discussion = Discussion(
        id: const Uuid().v4(),
        userUid: currentUser.uid,
        topic: topic,
        description: description,
        date: DateTime.now(),
      );
      await discussionsBox.put(discussion.id, discussion);
      return;
    }
    throw Exception('could not find current user');
  }

  @override
  Future<void> deleteDiscussion(String id) async {
    await discussionsBox.delete(id);
  }

  @override
  Future<List<Discussion>> getDiscussions() async {
    return discussionsBox.values.toList()
      ..sort((a, b) => b.date.compareTo(a.date));
  }
}
