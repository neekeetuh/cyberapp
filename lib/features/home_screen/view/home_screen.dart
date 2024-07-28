import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes:  const [
          NewsRoute(),
          MatchesRoute(),
          RankingsRoute(),
          StatsRoute(),
          FakeMatchesRoute(),
        ],
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
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle,
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
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.newspaper),
                  label: 'News',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad_outlined),
                  label: 'Matches',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events_rounded),
                  label: 'Rankings',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.query_stats),
                  label: 'Stats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.gamepad_outlined),
                  label: 'Fake Matches',
                ),
              ],
            ),
          );
        });
  }

  void _openTabsPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
