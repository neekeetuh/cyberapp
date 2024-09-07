import 'package:cyberapp/features/discussions/data/comments_repository_interface.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

class CommentsRepository implements CommentsRepositoryInterface {
  final Box<Comment> commentsBox;

  CommentsRepository({required this.commentsBox});

  @override
  Future<void> createComment(User user, Commentable topic, String text) async {
    final comment = Comment(
        id: const Uuid().v4(),
        userUid: user.uid,
        topic: topic,
        date: DateTime.now(),
        text: text);
    await commentsBox.put(comment.id, comment);
  }

  @override
  Future<void> deleteComment(String id) async {
    commentsBox.delete(id);
  }

  @override
  Future<List<Comment>> getComments(Commentable topic) async {
    return commentsBox.values.where((value) => value.topic == topic).toList();
  }
}
