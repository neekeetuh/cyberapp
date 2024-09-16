import 'package:cyberapp/features/comments/domain/domain.dart';

abstract interface class Commentable {
  Future<void> leaveComment(String commentText);

  Future<List<Comment>> getComments();
}
