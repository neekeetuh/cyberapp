import 'dart:developer';

import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'matches_repository.g.dart';

class MatchesRepository {
  final Dio dio;
  final Box<LiveMatch> liveMatchesBox;

  final Box<MatchResult> matchesResultsBox;

  final Box<UpcomingMatch> upcomingMatchesBox;

  const MatchesRepository(
      {required this.dio,
      required this.liveMatchesBox,
      required this.matchesResultsBox,
      required this.upcomingMatchesBox});


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

  Future<List<UpcomingMatch>> _fetchUpcomingMatchesFromApi() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=upcoming');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList = matchesListData
        .map((json) => UpcomingMatch.fromDto(UpcomingMatchDto.fromJson(json)))
        .toList();
    return matchesList;
  }

  Future<List<LiveMatch>> _fetchLiveMatchesFromApi() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=live_score');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList = matchesListData
        .map((json) => LiveMatch.fromDto(LiveMatchDto.fromJson(json)))
        .toList();
    return matchesList;
  }

  Future<List<MatchResult>> _fetchMatchResultsFromApi() async {
    final response =
        await dio.get('https://vlrggapi.vercel.app/match?q=results');
    final data = response.data as Map<String, dynamic>;
    final matchesListData = data['data']['segments'] as List<dynamic>;
    final matchesList = matchesListData
        .map((json) => MatchResult.fromDto(MatchResultDto.fromJson(json)))
        .toList();
    return matchesList;
  }
}

@riverpod
MatchesRepository matchesRepository(MatchesRepositoryRef ref) =>
    MatchesRepository(
        dio: Dio(),
        liveMatchesBox: GetIt.I<Box<LiveMatch>>(),
        matchesResultsBox: GetIt.I<Box<MatchResult>>(),
        upcomingMatchesBox: GetIt.I<Box<UpcomingMatch>>());

@riverpod
Future<List<UpcomingMatch>> upcomingMatchesList(
    UpcomingMatchesListRef ref) async {
  final matchesRepository = ref.read(matchesRepositoryProvider);
  var upcomingMatchesList = <UpcomingMatch>[];
  try {
    upcomingMatchesList =
        await matchesRepository._fetchUpcomingMatchesFromApi();
    final upcomingMatchesMap = {for (var e in upcomingMatchesList) e.matchPageUrl: e};
    await matchesRepository.upcomingMatchesBox.putAll(upcomingMatchesMap);
  } catch (e) {
    upcomingMatchesList = matchesRepository.upcomingMatchesBox.values.toList();
    log('couldn\'t get an upcoming matches list list from api ');
  }
  upcomingMatchesList
      .sort((a, b) => a.timeUntilMatch.compareTo(b.timeUntilMatch));
  return upcomingMatchesList;
}

@riverpod
Future<List<LiveMatch>> liveMatchesList(LiveMatchesListRef ref) async {
  final matchesRepository = ref.read(matchesRepositoryProvider);
  var liveMatchesList = <LiveMatch>[];
  try {
    liveMatchesList = await matchesRepository._fetchLiveMatchesFromApi();
    final liveMatchesMap = {for (var e in liveMatchesList) e.matchPageUrl: e};
    await matchesRepository.liveMatchesBox.putAll(liveMatchesMap);
  } catch (e) {
    liveMatchesList = matchesRepository.liveMatchesBox.values.toList();
    log('couldn\'t get a live matches list list from api ');
  }
  liveMatchesList.sort((a, b) => a.timeUntilMatch.compareTo(b.timeUntilMatch));
  return liveMatchesList;
}

@riverpod
Future<List<MatchResult>> matchResultsList(MatchResultsListRef ref) async {
  final matchesRepository = ref.read(matchesRepositoryProvider);
  var matchesResultsList = <MatchResult>[];
  try {
    matchesResultsList = await matchesRepository._fetchMatchResultsFromApi();
    final liveMatchesMap = {for (var e in matchesResultsList) e.matchPageUrl: e};
    await matchesRepository.matchesResultsBox.putAll(liveMatchesMap);
  } catch (e) {
    matchesResultsList = matchesRepository.matchesResultsBox.values.toList();
    log('couldn\'t get matches results list list from api ');
  }
  matchesResultsList.sort((a, b) => a.timeCompleted.compareTo(b.timeCompleted));
  return matchesResultsList;
}
