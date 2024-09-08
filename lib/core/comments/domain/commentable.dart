import 'package:cyberapp/core/comments/domain/comment.dart';

abstract interface class Commentable {
  Future<void> leaveComment(String commentText);

  Future<List<Comment>> getComments();
}
