part of 'comments_bloc.dart';

sealed class CommentsState extends Equatable {
  const CommentsState();
}

final class CommentsInitial extends CommentsState {
  @override
  List<Object> get props => [];
}

final class CommentsLoading extends CommentsState {
  @override
  List<Object?> get props => [];
}

final class CommentsLoaded extends CommentsState {
  final List<Comment> comments;

  const CommentsLoaded({required this.comments});

  @override
  List<Object?> get props => [comments];
}

final class CommentsLoadingFailed extends CommentsState {
  final Object? error;

  const CommentsLoadingFailed({required this.error});

  @override
  List<Object?> get props => [error];
}

final class CommentCreated extends CommentsState {
  @override
  List<Object?> get props => [];
}

final class CommentCreationFailed extends CommentsState {
  final Object? error;

  const CommentCreationFailed({required this.error});

  @override
  // TODO: implement props
  List<Object?> get props => [error];
}
