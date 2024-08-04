part of 'discussions_bloc.dart';

sealed class DiscussionsEvent extends Equatable {
  const DiscussionsEvent();
}

class LoadDiscussions extends DiscussionsEvent{
  @override
  List<Object?> get props => [];
}

class CreateDiscussion extends DiscussionsEvent{
  final String topic;
  final String description;

  const CreateDiscussion({required this.topic, required this.description});

  @override
  List<Object?> get props => [topic, description];
}
