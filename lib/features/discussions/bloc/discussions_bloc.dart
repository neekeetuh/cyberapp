import 'dart:async';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'discussions_event.dart';

part 'discussions_state.dart';

class DiscussionsBloc extends Bloc<DiscussionsEvent, DiscussionsState> {
  final DiscussionsRepository repository;

  DiscussionsBloc(this.repository) : super(DiscussionsInitial()) {
    on<LoadDiscussions>(onLoadDiscussions);
    on<CreateDiscussion>(onCreateDiscussion);
  }

  FutureOr<void> onLoadDiscussions(
      LoadDiscussions event, Emitter<DiscussionsState> emit) async {
    if (state is! DiscussionsLoaded) {
      emit(DiscussionsLoading());
    }
    try {
      final discussions = await repository.getDiscussions();
      emit(DiscussionsLoaded(discussions: discussions));
    } catch (error) {
      emit(DiscussionsLoadingFailed(error: error));
    }
  }

  FutureOr<void> onCreateDiscussion(
      CreateDiscussion event, Emitter<DiscussionsState> emit) async {
    try {
      await repository.createDiscussion(
        event.topic,
        event.description,
      );
    } catch (error) {
      emit(DiscussionCreationFailed(error: error));
    }
  }
}
