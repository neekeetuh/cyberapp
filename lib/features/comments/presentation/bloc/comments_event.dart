part of 'comments_bloc.dart';

sealed class CommentsEvent extends Equatable {
  const CommentsEvent();
}

final class CreateComment extends CommentsEvent {
  final Commentable topic;
  final String commentText;

  final User user;

  const CreateComment(
      {required this.commentText, required this.topic, required this.user});

  @override
  List<Object?> get props => [commentText, user];
}

final class DeleteComment extends CommentsEvent {
  final Comment comment;

  const DeleteComment({required this.comment});

  @override
  List<Object?> get props => [comment];
}

final class LoadComments extends CommentsEvent {
  final Commentable commentable;

  const LoadComments({required this.commentable});

  @override
  List<Object?> get props => [commentable];
}
