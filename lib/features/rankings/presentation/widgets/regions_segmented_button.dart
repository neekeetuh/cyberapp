import 'package:cyberapp/features/rankings/domain/regions.dart';
import 'package:cyberapp/features/rankings/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegionsSegmentedButton extends ConsumerWidget {
  final Region selectedRegion;
  const RegionsSegmentedButton({
    super.key, required this.selectedRegion,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SegmentedButton<Region>(
            segments: Region.values.map((region) {
              return ButtonSegment<Region>(
                  value: region, label: Text(region.regionTag));
            }).toList(),
            selected: <Region>{selectedRegion},
            onSelectionChanged: ( newSelection){
              ref.read(selectedRegionProvider.notifier).changeSelectedRegion(newSelection.first.regionCode);
              ref.invalidate(rankingTeamsListProvider(newSelection.first.regionCode));
            },
          ),
        ],
      ),
    );
  }
}