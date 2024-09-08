import 'dart:async';
import 'package:cyberapp/core/comments/data/data.dart';
import 'package:cyberapp/core/comments/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'comments_event.dart';

part 'comments_state.dart';

class CommentsBloc extends Bloc<CommentsEvent, CommentsState> {
  final CommentsRepositoryInterface repository;

  CommentsBloc({required this.repository}) : super(CommentsInitial()) {
    on<LoadComments>(_onLoadComments);
    on<CreateComment>(_onCreateComment);
  }

  FutureOr<void> _onLoadComments(
      LoadComments event, Emitter<CommentsState> emit) async {
    if (state is! CommentsLoaded) {
      emit(CommentsLoading());
    }
    try {
      final comments = await repository.getComments(event.commentable);
      emit(CommentsLoaded(comments: comments));
    } catch (error) {
      emit(CommentsLoadingFailed(error: error));
    }
  }

  FutureOr<void> _onCreateComment(
      CreateComment event, Emitter<CommentsState> emit) async {
    try {
      await repository.createComment(
          FirebaseAuth.instance.currentUser!, event.topic, event.commentText);
    } catch (error) {
      emit(CommentCreationFailed(error: error));
    }
  }
}
