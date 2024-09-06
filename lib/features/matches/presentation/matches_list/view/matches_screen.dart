import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/matches_list/widgets/widgets.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/theme/theme.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MatchesScreen extends ConsumerWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final matchesMap = ref.watch(matchesMapProvider);
    // final liveMatcheslist = ref.watch(liveMatchesListProvider);
    // final upcomingMatcheslist = ref.watch(upcomingMatchesListProvider);
    // final matchResultsList = ref.watch(matchResultsListProvider);
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(matchesMapProvider);
        // ref.invalidate(liveMatchesListProvider);
        // ref.invalidate(upcomingMatchesListProvider);
        // ref.invalidate(matchResultsListProvider);
      },
      child: matchesMap.when(data: (matches) {
        final matchesResults =
            matches[MatchResult.queryMatchType] as List<MatchResult>;
        final liveMatches =
            matches[LiveMatch.queryMatchType] as List<LiveMatch>;
        final upcomingMatches =
            matches[UpcomingMatch.queryMatchType] as List<UpcomingMatch>;
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Center(
                    child: TextButton(
                  style: ButtonStyle(
                      fixedSize:
                          const WidgetStatePropertyAll<Size>(Size(130, 50)),
                      backgroundColor: WidgetStatePropertyAll(
                          primaryColor.withOpacity(0.15))),
                  onPressed: () {
                    AutoRouter.of(context).push(const MatchesResultsRoute());
                  },
                  child: Text(
                    'Results',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: primaryColor),
                  ),
                )),
              ),
            ),
            matchesResults.isNotEmpty
                ? SliverToBoxAdapter(
                    child: MatchResultsMiniCards(
                      matches: matchesResults,
                    ),
                  )
                : const SliverToBoxAdapter(
                    child: Center(
                      child: Text('No results found'),
                    ),
                  ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const LiveRepeatingIndicator(),
                    Text(
                      'LIVE',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: Colors.red),
                    ),
                  ],
                )),
              ),
            ),
            liveMatches.isNotEmpty
                ? LiveMatchesGrid(
                    matches: liveMatches,
                  )
                : const SliverToBoxAdapter(
                    child:
                        Center(child: Text('No live matches at the moment'))),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                    child: Text(
                  'Upcoming',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.blueAccent),
                )),
              ),
            ),
            upcomingMatches.isNotEmpty
                ? SliverList.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: upcomingMatches.length,
                    itemBuilder: (context, index) {
                      final match = upcomingMatches[index];
                      return GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push(UpcomingMatchRoute(
                                match: upcomingMatches[index]));
                          },
                          child: UpcomingMatchMiniCard(match: match));
                    })
                : const SliverToBoxAdapter(
                    child: Center(
                      child: Text('No upcoming matches'),
                    ),
                  ),
          ],
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
