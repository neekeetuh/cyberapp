import 'package:cyberapp/features/comments/domain/domain.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class CommentsRepositoryInterface {
  Future<void> createComment(User user, Commentable topic, String text);

  Future<void> deleteComment(String id);

  Future<List<Comment>> getComments(Commentable topic);
}
