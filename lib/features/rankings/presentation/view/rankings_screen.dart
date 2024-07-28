import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/rankings/data/data.dart';
import 'package:cyberapp/features/rankings/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RankingsScreen extends ConsumerWidget {
  const RankingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedRegion = ref.watch(selectedRegionProvider);
    final rankingTeamsList =
        ref.watch(rankingTeamsListProvider(selectedRegion.regionCode));
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(rankingTeamsListProvider(selectedRegion.regionCode));
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegionsSegmentedButton(
                selectedRegion: selectedRegion,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  selectedRegion.regionName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          )),
          rankingTeamsList.when(data: (teams) {
            return SliverList.builder(
                itemCount: teams.length,
                itemBuilder: (context, index) {
                  final rankingTeam = teams[index];
                  return RankingTeamCard(rankingTeam: rankingTeam);
                });
          }, error: (error, st) {
            return SliverToBoxAdapter(child: Text(error.toString()));
          }, loading: () {
            return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            );
          })
        ],
      ),
    );
  }
}
