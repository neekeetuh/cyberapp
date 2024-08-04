part of 'discussions_bloc.dart';

sealed class DiscussionsState extends Equatable {
  const DiscussionsState();
}

final class DiscussionsInitial extends DiscussionsState {
  @override
  List<Object> get props => [];
}

final class DiscussionsLoading extends DiscussionsState {
  @override
  List<Object?> get props => [];
}

final class DiscussionsLoaded extends DiscussionsState {
  final List<Discussion> discussions;

  const DiscussionsLoaded({required this.discussions});

  @override
  List<Object?> get props => [discussions];
}

final class DiscussionsLoadingFailed extends DiscussionsState {
  final Object? error;

  const DiscussionsLoadingFailed({required this.error});

  @override
  List<Object?> get props => [error];
}

final class DiscussionCreationFailed extends DiscussionsState{
  final Object? error;

  const DiscussionCreationFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
