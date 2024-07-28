import 'package:cyberapp/features/stats/data/data.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StatsTimeSpansSegmentedButton extends ConsumerWidget {
  const StatsTimeSpansSegmentedButton({
    super.key,
    required this.selectedTimeSpan,
    required this.selectedRegion,
  });

  final StatsTimeSpans selectedTimeSpan;
  final StatsRegion selectedRegion;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SegmentedButton<StatsTimeSpans>(
            segments: StatsTimeSpans.values.map((timeSpan) {
              return ButtonSegment<StatsTimeSpans>(
                  value: timeSpan, label: Text(timeSpan.jsonCode));
            }).toList(),
            selected: {selectedTimeSpan},
            onSelectionChanged: (newSelection) {
              ref
                  .read(selectedStatsTimeSpanProvider.notifier)
                  .changeSelectedTimeSpan(newSelection.first);
              ref.invalidate(statsListProvider(
                  selectedRegion, newSelection.first));
            },
          )
        ],
      ),
    );
  }
}