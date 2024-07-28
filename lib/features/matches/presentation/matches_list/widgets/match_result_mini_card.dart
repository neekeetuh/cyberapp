import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class MatchResultMiniCard extends StatelessWidget {
  const MatchResultMiniCard({
    super.key,
    required this.match,
  });

  final MatchResult match;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(MatchResultRoute(match: match));
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(right: 10),
        width: 100,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    match.teamOne,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Text(match.scoreOne),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    match.teamTwo,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                Text(match.scoreTwo),
              ],
            )
          ],
        ),
      ),
    );
  }
}