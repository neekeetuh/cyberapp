import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/match_detail_screen/widgets/widgets.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class MatchHeader extends StatelessWidget {
  const MatchHeader({
    super.key,
    required this.match,
  });

  final FakeMatchData match;

  @override
  Widget build(BuildContext context) {
    final teamOne = match.teams[0];
    final teamTwo = match.teams[1];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => AutoRouter.of(context).push(TeamRoute(team: teamOne)),
            child: Column(
              children: [
                ImageTemplate(
                  image: AssetImage(teamOne.logoUrl),
                ),
                Text(teamOne.title)
              ],
            ),
          ),
          MatchHeaderScoreboard(match: match),
          GestureDetector(
            onTap: () => AutoRouter.of(context).push(TeamRoute(team: teamTwo)),
            child: Column(
              children: [
                ImageTemplate(
                  image: AssetImage(teamTwo.logoUrl),
                ),
                Text(teamTwo.title)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
