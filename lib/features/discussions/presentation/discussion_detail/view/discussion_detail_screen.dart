import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/comments/presentation/bloc/comments_bloc/comments_bloc.dart';
import 'package:cyberapp/features/comments/presentation/widgets/widgets.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/features/discussions/presentation/discussion_detail/widgets/widgets.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DiscussionDetailScreen extends StatelessWidget {
  const DiscussionDetailScreen({super.key, required this.discussion});

  final Discussion discussion;

  @override
  Widget build(BuildContext context) {
    context.read<CommentsBloc>().add(LoadComments(commentable: discussion));
    final currentUser = FirebaseAuth.instance.currentUser;
    return Scaffold(
        appBar: AppBar(
          title: Text(discussion.topic),
        ),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: DiscussionOverview(discussion: discussion),
              ),
              SliverToBoxAdapter(
                child: currentUser != null
                    ? Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: LeaveCommentSection(commentable: discussion),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Sign in to leave comments',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              BlocBuilder<CommentsBloc, CommentsState>(
                  builder: (context, state) {
                if (state is CommentsLoaded) {
                  return SliverList.separated(
                      separatorBuilder: (context, _) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: state.comments.length,
                      itemBuilder: (context, index) {
                        final comment = state.comments[index];
                        return Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryBackgroundColor,
                            ),
                            child: Text(comment.text));
                      });
                }
                return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()),
                );
              })
            ],
          ),
        ));
  }
}
