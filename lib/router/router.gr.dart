// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      final args = routeData.argsAs<AccountRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: AccountScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
    DiscussionDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DiscussionDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DiscussionDetailScreen(
          key: args.key,
          discussion: args.discussion,
        ),
      );
    },
    DiscussionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DiscussionsScreen(),
      );
    },
    FakeMatchesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FakeMatchesScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    LiveMatchRoute.name: (routeData) {
      final args = routeData.argsAs<LiveMatchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LiveMatchScreen(
          key: args.key,
          match: args.match,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    MatchDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MatchDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MatchDetailScreen(
          key: args.key,
          match: args.match,
        ),
      );
    },
    MatchResultRoute.name: (routeData) {
      final args = routeData.argsAs<MatchResultRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MatchResultScreen(
          key: args.key,
          match: args.match,
        ),
      );
    },
    MatchesResultsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MatchesResultsScreen(),
      );
    },
    MatchesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MatchesScreen(),
      );
    },
    NewsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailScreen(
          key: args.key,
          newsDetail: args.newsDetail,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
    PlayerRoute.name: (routeData) {
      final args = routeData.argsAs<PlayerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PlayerScreen(
          key: args.key,
          player: args.player,
        ),
      );
    },
    RankingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RankingsScreen(),
      );
    },
    SignupRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignupScreen(),
      );
    },
    StatsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StatsScreen(),
      );
    },
    TeamRoute.name: (routeData) {
      final args = routeData.argsAs<TeamRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TeamScreen(
          key: args.key,
          team: args.team,
        ),
      );
    },
    UpcomingMatchRoute.name: (routeData) {
      final args = routeData.argsAs<UpcomingMatchRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: UpcomingMatchScreen(
          key: args.key,
          match: args.match,
        ),
      );
    },
  };
}

/// generated route for
/// [AccountScreen]
class AccountRoute extends PageRouteInfo<AccountRouteArgs> {
  AccountRoute({
    Key? key,
    required User user,
    List<PageRouteInfo>? children,
  }) : super(
          AccountRoute.name,
          args: AccountRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<AccountRouteArgs> page =
      PageInfo<AccountRouteArgs>(name);
}

class AccountRouteArgs {
  const AccountRouteArgs({
    this.key,
    required this.user,
  });

  final Key? key;

  final User user;

  @override
  String toString() {
    return 'AccountRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [DiscussionDetailScreen]
class DiscussionDetailRoute extends PageRouteInfo<DiscussionDetailRouteArgs> {
  DiscussionDetailRoute({
    Key? key,
    required Discussion discussion,
    List<PageRouteInfo>? children,
  }) : super(
          DiscussionDetailRoute.name,
          args: DiscussionDetailRouteArgs(
            key: key,
            discussion: discussion,
          ),
          initialChildren: children,
        );

  static const String name = 'DiscussionDetailRoute';

  static const PageInfo<DiscussionDetailRouteArgs> page =
      PageInfo<DiscussionDetailRouteArgs>(name);
}

class DiscussionDetailRouteArgs {
  const DiscussionDetailRouteArgs({
    this.key,
    required this.discussion,
  });

  final Key? key;

  final Discussion discussion;

  @override
  String toString() {
    return 'DiscussionDetailRouteArgs{key: $key, discussion: $discussion}';
  }
}

/// generated route for
/// [DiscussionsScreen]
class DiscussionsRoute extends PageRouteInfo<void> {
  const DiscussionsRoute({List<PageRouteInfo>? children})
      : super(
          DiscussionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscussionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FakeMatchesScreen]
class FakeMatchesRoute extends PageRouteInfo<void> {
  const FakeMatchesRoute({List<PageRouteInfo>? children})
      : super(
          FakeMatchesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FakeMatchesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LiveMatchScreen]
class LiveMatchRoute extends PageRouteInfo<LiveMatchRouteArgs> {
  LiveMatchRoute({
    Key? key,
    required LiveMatch match,
    List<PageRouteInfo>? children,
  }) : super(
          LiveMatchRoute.name,
          args: LiveMatchRouteArgs(
            key: key,
            match: match,
          ),
          initialChildren: children,
        );

  static const String name = 'LiveMatchRoute';

  static const PageInfo<LiveMatchRouteArgs> page =
      PageInfo<LiveMatchRouteArgs>(name);
}

class LiveMatchRouteArgs {
  const LiveMatchRouteArgs({
    this.key,
    required this.match,
  });

  final Key? key;

  final LiveMatch match;

  @override
  String toString() {
    return 'LiveMatchRouteArgs{key: $key, match: $match}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MatchDetailScreen]
class MatchDetailRoute extends PageRouteInfo<MatchDetailRouteArgs> {
  MatchDetailRoute({
    Key? key,
    required FakeMatchData match,
    List<PageRouteInfo>? children,
  }) : super(
          MatchDetailRoute.name,
          args: MatchDetailRouteArgs(
            key: key,
            match: match,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchDetailRoute';

  static const PageInfo<MatchDetailRouteArgs> page =
      PageInfo<MatchDetailRouteArgs>(name);
}

class MatchDetailRouteArgs {
  const MatchDetailRouteArgs({
    this.key,
    required this.match,
  });

  final Key? key;

  final FakeMatchData match;

  @override
  String toString() {
    return 'MatchDetailRouteArgs{key: $key, match: $match}';
  }
}

/// generated route for
/// [MatchResultScreen]
class MatchResultRoute extends PageRouteInfo<MatchResultRouteArgs> {
  MatchResultRoute({
    Key? key,
    required MatchResult match,
    List<PageRouteInfo>? children,
  }) : super(
          MatchResultRoute.name,
          args: MatchResultRouteArgs(
            key: key,
            match: match,
          ),
          initialChildren: children,
        );

  static const String name = 'MatchResultRoute';

  static const PageInfo<MatchResultRouteArgs> page =
      PageInfo<MatchResultRouteArgs>(name);
}

class MatchResultRouteArgs {
  const MatchResultRouteArgs({
    this.key,
    required this.match,
  });

  final Key? key;

  final MatchResult match;

  @override
  String toString() {
    return 'MatchResultRouteArgs{key: $key, match: $match}';
  }
}

/// generated route for
/// [MatchesResultsScreen]
class MatchesResultsRoute extends PageRouteInfo<void> {
  const MatchesResultsRoute({List<PageRouteInfo>? children})
      : super(
          MatchesResultsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MatchesResultsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MatchesScreen]
class MatchesRoute extends PageRouteInfo<void> {
  const MatchesRoute({List<PageRouteInfo>? children})
      : super(
          MatchesRoute.name,
          initialChildren: children,
        );

  static const String name = 'MatchesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsDetailScreen]
class NewsDetailRoute extends PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    Key? key,
    required NewsData newsDetail,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailRoute.name,
          args: NewsDetailRouteArgs(
            key: key,
            newsDetail: newsDetail,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailRoute';

  static const PageInfo<NewsDetailRouteArgs> page =
      PageInfo<NewsDetailRouteArgs>(name);
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({
    this.key,
    required this.newsDetail,
  });

  final Key? key;

  final NewsData newsDetail;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, newsDetail: $newsDetail}';
  }
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PlayerScreen]
class PlayerRoute extends PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    Key? key,
    required Player player,
    List<PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            key: key,
            player: player,
          ),
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const PageInfo<PlayerRouteArgs> page = PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    this.key,
    required this.player,
  });

  final Key? key;

  final Player player;

  @override
  String toString() {
    return 'PlayerRouteArgs{key: $key, player: $player}';
  }
}

/// generated route for
/// [RankingsScreen]
class RankingsRoute extends PageRouteInfo<void> {
  const RankingsRoute({List<PageRouteInfo>? children})
      : super(
          RankingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RankingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignupScreen]
class SignupRoute extends PageRouteInfo<void> {
  const SignupRoute({List<PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StatsScreen]
class StatsRoute extends PageRouteInfo<void> {
  const StatsRoute({List<PageRouteInfo>? children})
      : super(
          StatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TeamScreen]
class TeamRoute extends PageRouteInfo<TeamRouteArgs> {
  TeamRoute({
    Key? key,
    required Team team,
    List<PageRouteInfo>? children,
  }) : super(
          TeamRoute.name,
          args: TeamRouteArgs(
            key: key,
            team: team,
          ),
          initialChildren: children,
        );

  static const String name = 'TeamRoute';

  static const PageInfo<TeamRouteArgs> page = PageInfo<TeamRouteArgs>(name);
}

class TeamRouteArgs {
  const TeamRouteArgs({
    this.key,
    required this.team,
  });

  final Key? key;

  final Team team;

  @override
  String toString() {
    return 'TeamRouteArgs{key: $key, team: $team}';
  }
}

/// generated route for
/// [UpcomingMatchScreen]
class UpcomingMatchRoute extends PageRouteInfo<UpcomingMatchRouteArgs> {
  UpcomingMatchRoute({
    Key? key,
    required UpcomingMatch match,
    List<PageRouteInfo>? children,
  }) : super(
          UpcomingMatchRoute.name,
          args: UpcomingMatchRouteArgs(
            key: key,
            match: match,
          ),
          initialChildren: children,
        );

  static const String name = 'UpcomingMatchRoute';

  static const PageInfo<UpcomingMatchRouteArgs> page =
      PageInfo<UpcomingMatchRouteArgs>(name);
}

class UpcomingMatchRouteArgs {
  const UpcomingMatchRouteArgs({
    this.key,
    required this.match,
  });

  final Key? key;

  final UpcomingMatch match;

  @override
  String toString() {
    return 'UpcomingMatchRouteArgs{key: $key, match: $match}';
  }
}
