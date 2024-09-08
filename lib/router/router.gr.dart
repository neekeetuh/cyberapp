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
