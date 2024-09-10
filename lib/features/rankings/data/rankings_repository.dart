import 'package:cyberapp/features/rankings/domain/regions.dart';
import 'package:cyberapp/features/rankings/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rankings_repository.g.dart';
class RankingsRepository {
  final Dio dio;

  RankingsRepository({required this.dio});
  Future<List<RankingTeam>> _fetchRankingTeamsListFromApi(String regionCode) async{
    final response = await dio.get('https://vlrggapi.vercel.app/rankings/$regionCode');
    final data = response.data as Map<String,dynamic>;
    final rankingTeamsListData = data['data'] as List<dynamic>;
    final rankingTeamsList = rankingTeamsListData.map((json)=>RankingTeam.fromJson(json)).toList();
    return rankingTeamsList;
  }
}

@riverpod
RankingsRepository rankingsRepository(RankingsRepositoryRef ref) => RankingsRepository(dio: Dio());

@riverpod
Future<List<RankingTeam>> rankingTeamsList(RankingTeamsListRef ref, String regionCode) async {
  var rankingTeamList = <RankingTeam>[];
  try {
    final rankingsRepository = ref.watch(rankingsRepositoryProvider);
    rankingTeamList = await rankingsRepository._fetchRankingTeamsListFromApi(regionCode);
  }  catch (e) {
    throw Exception(e.toString());
  }
  return rankingTeamList;
}

@riverpod
class SelectedRegion extends _$SelectedRegion{
  @override
  Region build(){
    return Region.na;
  }

  void changeSelectedRegion(String regionCode){
    state = Region.values.singleWhere((value) => value.regionCode == regionCode);
  }
}
