import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/providers.dart';
import 'package:cyberapp/features/discussions/presentation/discussions_list/bloc/discussions_bloc.dart';
import 'package:cyberapp/features/discussions/presentation/discussions_list/widgets/widgets.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class DiscussionsScreen extends HookConsumerWidget {
  const DiscussionsScreen({super.key});

  static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    context.read<DiscussionsBloc>().add(LoadDiscussions());
    final topicController = useTextEditingController(text: '');
    final descriptionController = useTextEditingController(text: '');
    final currentUser = ref.watch(currentUserProvider);
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
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: topicController,
                              decoration:
                                  const InputDecoration(hintText: 'Topic'),
                            ),
                            TextFormField(
                                controller: descriptionController,
                                decoration: const InputDecoration(
                                    hintText: 'Description')),
                            const SizedBox(
                              height: 30,
                            ),
                            CustomizedButton(
                                text: 'Create',
                                onPressed: () {
                                  _onPressCreateButton(
                                      context,
                                      topicController.text,
                                      descriptionController.text);
                                }),
                          ],
                        )),
                  )
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
                      return GestureDetector(
                        onTap: () {
                          AutoRouter.of(context).push(DiscussionDetailRoute(
                              discussion: state.discussions[index]));
                        },
                        child: DiscussionCard(
                          discussion: state.discussions[index],
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

  Future<void> _onPressCreateButton(
      BuildContext context, String topic, String description) async {
    context.read<DiscussionsBloc>().add(CreateDiscussion(
          topic: topic,
          description: description,
        ));
    context.read<DiscussionsBloc>().add(LoadDiscussions());
  }
}
