import 'dart:developer';

import 'package:cyberapp/features/rankings/data/data.dart';
import 'package:cyberapp/features/rankings/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rankings_repository.g.dart';

class RankingsRepository {
  final Dio dio;

  final Box<RankingTeam> rankingsBox;

  const RankingsRepository({required this.dio, required this.rankingsBox});

  Future<List<RankingTeam>> _fetchRankingTeamsListFromApi(
      String regionCode) async {
    final response = await dio
        .get('https://vlrggapi.vercel.app/rankings?region=$regionCode');
    final data = response.data as Map<String, dynamic>;
    final rankingTeamsListData = data['data'] as List<dynamic>;
    final rankingTeamsList = rankingTeamsListData
        .map((json) => RankingTeam.fromDto(RankingTeamDto.fromJson(json)))
        .toList();
    return rankingTeamsList;
  }
}

@riverpod
RankingsRepository rankingsRepository(RankingsRepositoryRef ref) =>
    RankingsRepository(dio: Dio(), rankingsBox: GetIt.I<Box<RankingTeam>>());

@riverpod
Future<List<RankingTeam>> rankingTeamsList(
    RankingTeamsListRef ref, String regionCode) async {
  var rankingTeamList = <RankingTeam>[];
  final rankingsRepository = ref.read(rankingsRepositoryProvider);
  try {
    rankingTeamList =
        await rankingsRepository._fetchRankingTeamsListFromApi(regionCode);
    final rankingsMap = {for (var e in rankingTeamList) e.teamName: e};
    rankingsRepository.rankingsBox.putAll(rankingsMap);
  } catch (e) {
    rankingTeamList = rankingsRepository.rankingsBox.values.toList();
    log('couldn\'t get rankings list');
  }
  rankingTeamList.sort((a, b) => a.rank.compareTo(b.rank));
  return rankingTeamList;
}

@riverpod
class SelectedRegion extends _$SelectedRegion {
  @override
  Region build() {
    return Region.na;
  }

  void changeSelectedRegion(String regionCode) {
    state =
        Region.values.singleWhere((value) => value.regionCode == regionCode);
  }
}
