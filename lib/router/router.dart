import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/view/view.dart';
import 'package:cyberapp/features/home_screen/view/view.dart';
import 'package:cyberapp/features/match_detail_screen/view/view.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/match_detail/view/view.dart';
import 'package:cyberapp/features/matches/presentation/matches_list/view/view.dart';
import 'package:cyberapp/features/matches_screen/view/view.dart';
import 'package:cyberapp/features/news/domain/domain.dart';
import 'package:cyberapp/features/news/presentation/news_detail/view/view.dart';
import 'package:cyberapp/features/news/presentation/news_list/view/view.dart';
import 'package:cyberapp/features/player_screen/view/view.dart';
import 'package:cyberapp/features/rankings/presentation/view/view.dart';
import 'package:cyberapp/features/stats/presentation/view/stats_screen.dart';
import 'package:cyberapp/features/team_screen/view/view.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(
              page: NewsRoute.page,
              path: 'news',
            ),
            AutoRoute(
              page: MatchesRoute.page,
              path: 'matches',
            ),
            AutoRoute(
              page: RankingsRoute.page,
              path: 'rankings',
            ),
            AutoRoute(
              page: StatsRoute.page,
              path: 'stats',
            ),
            AutoRoute(
              page: FakeMatchesRoute.page,
              path: 'fake_matches',
            ),
          ],
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(
          page: SignupRoute.page,
          path: '/signup',
        ),
        AutoRoute(
          page: AccountRoute.page,
          path: '/account',
        ),
        AutoRoute(
          page: NewsDetailRoute.page,
          path: '/news_detail',
        ),
        AutoRoute(
          page: MatchResultRoute.page,
          path: '/match_result',
        ),
        AutoRoute(
          page: LiveMatchRoute.page,
          path: '/live_match',
        ),
        AutoRoute(
          page: UpcomingMatchRoute.page,
          path: '/upcoming_match',
        ),
        AutoRoute(
          page: MatchDetailRoute.page,
          path: '/fake_match_detail',
        ),
        AutoRoute(
          page: PlayerRoute.page,
          path: '/player',
        ),
        AutoRoute(
          page: TeamRoute.page,
          path: '/team',
        ),
        AutoRoute(
          page: MatchesResultsRoute.page,
          path: '/matches_results',
        ),
      ];
}
