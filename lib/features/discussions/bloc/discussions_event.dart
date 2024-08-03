part of 'discussions_bloc.dart';

sealed class DiscussionsEvent extends Equatable {
  const DiscussionsEvent();
}

class LoadDiscussions extends DiscussionsEvent{
  @override
  List<Object?> get props => [];
}
