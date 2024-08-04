import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/auth/presentation/data/users_repository.dart';
import 'package:cyberapp/features/discussions/bloc/discussions_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DiscussionsScreen extends HookConsumerWidget {
  const DiscussionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    context.read<DiscussionsBloc>().add(LoadDiscussions());
    final topicController = useTextEditingController(text: '');
    final descriptionController = useTextEditingController(text: '');
    final formKey = GlobalKey<FormState>();
    final currentUser = ref.watch(currentUserProvider);
    // final currentUser = FirebaseAuth.instance.currentUser;
    return RefreshIndicator(
      onRefresh: () async {
        context.read<DiscussionsBloc>().add(LoadDiscussions());
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                textAlign: TextAlign.center,
                'Discussions',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: currentUser != null
                ? Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: topicController,
                          decoration: const InputDecoration(hintText: 'Topic'),
                        ),
                        TextFormField(
                            controller: descriptionController,
                            decoration:
                                const InputDecoration(hintText: 'Description')),
                        ElevatedButton(
                            onPressed: () {
                              context
                                  .read<DiscussionsBloc>()
                                  .add(CreateDiscussion(
                                    topic: topicController.text,
                                    description: descriptionController.text,
                                  ));
                              context
                                  .read<DiscussionsBloc>()
                                  .add(LoadDiscussions());
                            },
                            child: const Center(
                              child: Text('Create'),
                            ))
                      ],
                    ))
                : const Center(child: Text('Sign in to create a discussion')),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          BlocBuilder<DiscussionsBloc, DiscussionsState>(
            builder: (context, state) {
              if (state is DiscussionCreationFailed) {
                return SliverToBoxAdapter(
                  child: Text(state.error.toString()),
                );
              }
              if (state is DiscussionsLoaded) {
                return SliverList.builder(
                    itemCount: state.discussions.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        child: Column(
                          children: [
                            Text(
                              state.discussions[index].topic,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(state.discussions[index].userUid)
                          ],
                        ),
                      );
                    });
              }
              if (state is DiscussionsLoadingFailed) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text(state.error.toString()),
                  ),
                );
              }

              return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            },
          )
        ],
      ),
    );
  }
}
