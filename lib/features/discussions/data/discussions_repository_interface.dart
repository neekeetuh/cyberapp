import 'package:cyberapp/features/discussions/domain/discussion.dart';

abstract interface class DiscussionsRepositoryInterface {
  Future<void> createDiscussion(String topic, String description);

  Future<void> deleteDiscussion(String id);

  Future<List<Discussion>> getDiscussions();
}
