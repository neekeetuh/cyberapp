import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class MatchMiniCard extends StatelessWidget {
  const MatchMiniCard({
    super.key, required this.match,
  });

  final FakeMatchData match;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(MatchDetailRoute(match: match)),
      child: Container(
        padding: const EdgeInsets.all(7),
        width: 100,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(
                  match.teams[0].title, maxLines: 1, overflow: TextOverflow.ellipsis,)),
                Text('${match.score[0]}')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(
                  match.teams[1].title, maxLines: 1, overflow: TextOverflow.ellipsis,)),
                Text('${match.score[1]}')
              ],
            ),
          ],
        ),
      ),
    );
  }
}