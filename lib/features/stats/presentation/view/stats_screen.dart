import 'package:auto_route/annotations.dart';
import 'package:cyberapp/features/stats/data/data.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:cyberapp/features/stats/presentation/widgets/widgets.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class StatsScreen extends ConsumerWidget {
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTimeSpan = ref.watch(selectedStatsTimeSpanProvider);
    final selectedRegion = ref.watch(selectedStatsRegionProvider);
    final statsList =
        ref.watch(statsListProvider(selectedRegion, selectedTimeSpan));
    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(statsListProvider);
      },
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Region:',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                StatsRegionsSegmentedButton(
                    selectedRegion: selectedRegion,
                    selectedTimeSpan: selectedTimeSpan),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    'Time Span (days):',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                StatsTimeSpansSegmentedButton(
                    selectedTimeSpan: selectedTimeSpan,
                    selectedRegion: selectedRegion),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: StatsDescriptionsRow(),
          ),
          statsList.when(data: (statsList) {
            return SliverList.builder(
                itemCount: statsList.length,
                itemBuilder: (context, index) {
                  return StatsPlayerCard(
                    stats: statsList[index],
                    rank: index + 1,
                  );
                });
          }, error: (error, st) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text(error.toString()),
              ),
            );
          }, loading: () {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          })
        ],
      ),
    );
  }
}
