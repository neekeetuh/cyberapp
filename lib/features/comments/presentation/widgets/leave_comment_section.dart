import 'package:cyberapp/features/comments/domain/domain.dart';
import 'package:cyberapp/features/comments/presentation/bloc/comments_bloc.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LeaveCommentSection extends HookWidget {
  const LeaveCommentSection({
    super.key,
    required this.commentable,
  });

  final Commentable commentable;

  @override
  Widget build(BuildContext context) {
    final commentController = useTextEditingController(text: '');
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 1.6,
          child: TextField(
            maxLines: null,
            controller: commentController,
            decoration: const InputDecoration(hintText: 'Leave a comment'),
          ),
        ),
        CustomizedButton(
            onPressed: () {
              context.read<CommentsBloc>().add(CreateComment(
                  commentText: commentController.text,
                  topic: commentable,
                  user: FirebaseAuth.instance.currentUser!));
              context
                  .read<CommentsBloc>()
                  .add(LoadComments(commentable: commentable));
            },
            text: 'Submit')
      ],
    );
  }
}
