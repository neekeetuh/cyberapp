import 'package:cyberapp/features/stats/data/stats_repository.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatsRegionsSegmentedButton extends ConsumerWidget {
  const StatsRegionsSegmentedButton({
    super.key,
    required this.selectedRegion,
    required this.selectedTimeSpan,
  });

  final StatsRegion selectedRegion;
  final StatsTimeSpans selectedTimeSpan;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SegmentedButton<StatsRegion>(
            segments: StatsRegion.values.map((region) {
              return ButtonSegment<StatsRegion>(
                  value: region, label: Text(region.regionTag));
            }).toList(),
            selected: {selectedRegion},
            onSelectionChanged: (newSelection) {
              ref
                  .read(selectedStatsRegionProvider.notifier)
                  .changeSelectedRegion(newSelection.first);
              ref.invalidate(statsListProvider(
                  newSelection.first, selectedTimeSpan));
            },
          )
        ],
      ),
    );
  }
}