import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';

class CommentsRepository {
  final Box<Comment> commentsBox;

  CommentsRepository({required this.commentsBox});

  Future<void> createComment(User user, Commentable topic, String text) async {
    final comment =
        Comment(user: user, topic: topic, date: DateTime.now(), text: text);
    await commentsBox.put(comment.id, comment);
  }

  Future<void> deleteComment(String id) async {
    commentsBox.delete(id);
  }

  Future<List<Comment>> getComments() async {
    return commentsBox.values.toList();
  }
}
