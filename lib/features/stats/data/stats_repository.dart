import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'stats_repository.g.dart';

class StatsRepository {
  final Dio dio;

  StatsRepository({required this.dio});

  Future<List<Stats>> _fetchStatsListFromApi(
      StatsRegion region, StatsTimeSpans timeSpan) async {
    final response = await dio.get(
        'https://vlrggapi.vercel.app/stats/${region.regionCode}/${timeSpan.jsonCode}');
    final data = response.data as Map<String, dynamic>;
    final statsListData = data['data']['segments'] as List<dynamic>;
    final statsList =
        statsListData.map((json) => Stats.fromJson(json)).toList();
    return statsList;
  }
}

@riverpod
StatsRepository statsRepository(StatsRepositoryRef ref) =>
    StatsRepository(dio: Dio());

@riverpod
Future<List<Stats>> statsList(
    StatsListRef ref, StatsRegion region, StatsTimeSpans timeSpan) async {
  var statsList = <Stats>[];
  try {
    final statsRepository = ref.watch(statsRepositoryProvider);
    statsList = await statsRepository._fetchStatsListFromApi(region, timeSpan);
  } catch (e) {
    throw Exception(e.toString());
  }
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
