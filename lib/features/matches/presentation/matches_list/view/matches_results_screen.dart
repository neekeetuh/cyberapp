import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/presentation/matches_list/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MatchesResultsScreen extends ConsumerWidget {
  const MatchesResultsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesResultsList = ref.watch(matchResultsListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mathes Results'),
      ),
      body: matchesResultsList.when(data: (matches) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
          child: GridView.builder(
              itemCount: matches.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 5,
                  crossAxisCount: 2,
                  childAspectRatio: 3),
              itemBuilder: (context, index) {
                return MatchResultMiniCard(
                  match: matches[index],
                );
              }),
        );
      }, error: (error, st) {
        return Center(
          child: Text(error.toString()),
        );
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
