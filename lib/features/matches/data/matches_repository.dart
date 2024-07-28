import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_repository.g.dart';

class MatchesRepository {
  final Dio dio;

  MatchesRepository({required this.dio});

  Future<Map<String, dynamic>> _fetchMatches() async {
    List<UpcomingMatch> upcomingMatchesList = await _fetchUpcomingMatches();
    List<MatchResult> matchResultsList = await _fetchMatchResults();
    List<LiveMatch> liveMatchesList = await _fetchLiveMatches();
    return {
      UpcomingMatch.queryMatchType: upcomingMatchesList,
      MatchResult.queryMatchType: matchResultsList,
      LiveMatch.queryMatchType: liveMatchesList
    };
  }

  // Future<dynamic> _getMatchesByType(String matchType) async {
  //   final response =
  //       await dio.get('https://vlrggapi.vercel.app/match?q=$matchType');
  //   final data = response.data as Map<String, dynamic>;
  //   final matchesListData = data['data']['segments'] as List<dynamic>;
  //   final matchesList = matchesListData.map((json) {
  //     switch(matchType) {
  //       case 'upcoming': return UpcomingMatch.fromJson(json);
  //       case 'live_score': return LiveMatch.fromJson(json);
  //       case 'results': return MatchResult.fromJson(json);
  //       default: return UpcomingMatch.fromJson(json);
  //     }
  //   }).toList();
  //   return matchesList;
  // }

  Future<List<UpcomingMatch>> _fetchUpcomingMatches() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=upcoming');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList =
        matchesListData.map((json) => UpcomingMatch.fromJson(json)).toList();
    return matchesList;
  }

  Future<List<LiveMatch>> _fetchLiveMatches() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=live_score');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList =
        matchesListData.map((json) => LiveMatch.fromJson(json)).toList();
    return matchesList;
  }

  Future<List<MatchResult>> _fetchMatchResults() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=results');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList =
        matchesListData.map((json) => MatchResult.fromJson(json)).toList();
    return matchesList;
  }
}

@riverpod
MatchesRepository matchesRepository(MatchesRepositoryRef ref) =>
    MatchesRepository(dio: Dio());

@riverpod
Future<List<UpcomingMatch>> upcomingMatchesList(
    UpcomingMatchesListRef ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final matchesList = await matchesRepository._fetchUpcomingMatches();
  return matchesList;
}

@riverpod
Future<List<LiveMatch>> liveMatchesList(LiveMatchesListRef ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final matchesList = await matchesRepository._fetchLiveMatches();
  return matchesList;
}

@riverpod
Future<List<MatchResult>> matchResultsList(MatchResultsListRef ref) async {
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final matchesList = await matchesRepository._fetchMatchResults();
  return matchesList;
}

@riverpod
Future<Map<String,dynamic>> matchesMap(MatchesMapRef ref) async{
  final matchesRepository = ref.watch(matchesRepositoryProvider);
  final matches = await matchesRepository._fetchMatches();
  return matches;
}