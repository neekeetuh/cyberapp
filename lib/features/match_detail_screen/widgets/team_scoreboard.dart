import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class TeamScoreboard extends StatelessWidget {
  const TeamScoreboard({
    super.key,
    required this.team,
    required this.match,
  });

  final Team team;
  final FakeMatchData match;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: secondaryBackgroundColor,
      ),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: team.getPlayers
                  .map((player) => Text(player.nickname))
                  .toList(),
            ),
            SizedBox(
              width: 200,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('K'),
                      Text('D'),
                      Text('A'),
                      Text('S'),
                    ],
                  ),
                  ...team.getPlayers.map((player) =>
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              player.getStringStatInMatchByName(match,PlayerStats.kills)),
                          Text(
                              player.getStringStatInMatchByName(match,PlayerStats.deaths)),
                          Text(
                              player.getStringStatInMatchByName(match,PlayerStats.assists)),
                          Text(
                              player.getStringStatInMatchByName(match,PlayerStats.score)),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
