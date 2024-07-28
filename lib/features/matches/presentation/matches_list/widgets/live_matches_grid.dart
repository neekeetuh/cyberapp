import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/matches_list/widgets/widgets.dart';
import 'package:cyberapp/router/router.dart';
import 'package:flutter/material.dart';

class LiveMatchesGrid extends StatelessWidget {
  const LiveMatchesGrid({
    super.key,
    required this.matches,
  });

  final List<LiveMatch> matches;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5, crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate(childCount: matches.length,
          (context, index) {
        return GestureDetector(
            onTap: () {
              AutoRouter.of(context)
                  .push(LiveMatchRoute(match: matches[index]));
            },
            child: LiveMatchMiniCard(match: matches[index]));
      }),
    );
  }
}
