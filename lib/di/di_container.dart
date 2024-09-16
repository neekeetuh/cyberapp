import 'package:cyberapp/features/comments/data/data.dart';
import 'package:cyberapp/features/comments/domain/domain.dart';
import 'package:cyberapp/features/discussions/data/data.dart';
import 'package:cyberapp/features/discussions/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/features/rankings/domain/domain.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:cyberapp/router/router.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final class DIContainer {
  static void registerDI() async {
    GetIt.I.registerSingleton<AppRouter>(AppRouter());
    GetIt.I.registerSingletonAsync<Box<Discussion>>(
        () => Hive.openBox<Discussion>('discussions'));
    GetIt.I.registerSingletonAsync<Box<Comment>>(
        () => Hive.openBox<Comment>('comments'));
    GetIt.I.registerSingletonAsync<Box<LiveMatch>>(
        () => Hive.openBox<LiveMatch>('live_matches'));
    GetIt.I.registerSingletonAsync<Box<MatchResult>>(
        () => Hive.openBox<MatchResult>('matches_results'));
    GetIt.I.registerSingletonAsync<Box<UpcomingMatch>>(
        () => Hive.openBox<UpcomingMatch>('upcoming_matches'));
    GetIt.I.registerSingletonAsync<Box<NewsData>>(
        () => Hive.openBox<NewsData>('news'));
    GetIt.I.registerSingletonAsync<Box<RankingTeam>>(
        () => Hive.openBox<RankingTeam>('ranking_teams'));
    GetIt.I
        .registerSingletonAsync<Box<Stats>>(() => Hive.openBox<Stats>('stats'));
    await GetIt.I.allReady();
    GetIt.I.registerSingleton<DiscussionsRepository>(
        DiscussionsRepository(discussionsBox: GetIt.I<Box<Discussion>>()));
    GetIt.I.registerSingleton<CommentsRepository>(
        CommentsRepository(commentsBox: GetIt.I<Box<Comment>>()));
  }
}
