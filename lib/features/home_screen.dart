import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/auth/presentation/providers.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    final Map<PageRouteInfo, BottomNavigationBarItem> tabs = {
      const NewsRoute(): const BottomNavigationBarItem(
        icon: Icon(Icons.newspaper),
        label: 'News',
      ),
      const MatchesRoute(): const BottomNavigationBarItem(
        icon: Icon(Icons.gamepad_outlined),
        label: 'Matches',
      ),
      const RankingsRoute(): const BottomNavigationBarItem(
        icon: Icon(Icons.emoji_events_rounded),
        label: 'Rankings',
      ),
      const StatsRoute(): const BottomNavigationBarItem(
        icon: Icon(Icons.query_stats),
        label: 'Stats',
      ),
      const DiscussionsRoute(): const BottomNavigationBarItem(
        icon: Icon(Icons.topic_outlined),
        label: 'Discussions',
      ),
    };
    return AutoTabsRouter(
        routes: tabs.keys.toList(),
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              title: const Text(
                'CyberApp',
              ),
              actions: [
                currentUser != null
                    ? IconButton(
                        onPressed: () {
                          AutoRouter.of(context)
                              .push(AccountRoute(user: currentUser));
                        },
                        icon: const Icon(
                          Icons.account_circle,
                          color: Colors.white,
                        ))
                    : IconButton(
                        onPressed: () {
                          AutoRouter.of(context).push(const LoginRoute());
                        },
                        icon: const Icon(
                          Icons.login,
                          color: Colors.white,
                        )),
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: SearchButton(),
              ),
            ),
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => _openTabsPage(index, tabsRouter),
              type: BottomNavigationBarType.fixed,
              items: tabs.values.toList(),
            ),
          );
        });
  }

  void _openTabsPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
