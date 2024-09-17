import 'dart:developer';

import 'package:cyberapp/features/stats/data/data.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stats_repository.g.dart';

class StatsRepository {
  final Dio dio;

  final Box<Stats> statsBox;

  const StatsRepository({
    required this.dio,
    required this.statsBox,
  });

  Future<List<Stats>> _fetchStatsListFromApi(
      StatsRegion region, StatsTimeSpans timeSpan) async {
    final response = await dio.get(
        'https://vlrggapi.vercel.app/stats?region=${region.regionCode}&timespan=${timeSpan.jsonCode}');
    final data = response.data as Map<String, dynamic>;
    final statsListData = data['data']['segments'] as List<dynamic>;
    final statsList = statsListData
        .map((json) => Stats.fromDto(StatsDto.fromJson(json)))
        .toList();
    return statsList;
  }
}

@riverpod
StatsRepository statsRepository(StatsRepositoryRef ref) =>
    StatsRepository(dio: Dio(), statsBox: GetIt.I<Box<Stats>>());

@riverpod
Future<List<Stats>> statsList(
    StatsListRef ref, StatsRegion region, StatsTimeSpans timeSpan) async {
  var statsList = <Stats>[];
  final statsRepository = ref.read(statsRepositoryProvider);
  try {
    statsList = await statsRepository._fetchStatsListFromApi(region, timeSpan);
    final statsMap = {for (var e in statsList) e.playerName: e};
    statsRepository.statsBox.putAll(statsMap);
  } catch (e) {
    log('couldn\'t get stats list');
    statsList = statsRepository.statsBox.values.toList();
  }
  statsList.sort((a, b) => b.rating.compareTo(a.rating));
  return statsList;
}

@riverpod
class SelectedStatsRegion extends _$SelectedStatsRegion {
  @override
  StatsRegion build() {
    return StatsRegion.na;
  }

  void changeSelectedRegion(StatsRegion region) {
    state = region;
  }
}

@riverpod
class SelectedStatsTimeSpan extends _$SelectedStatsTimeSpan {
  @override
  StatsTimeSpans build() {
    return StatsTimeSpans.days30;
  }

  void changeSelectedTimeSpan(StatsTimeSpans timeSpan) {
    state = timeSpan;
  }
}
