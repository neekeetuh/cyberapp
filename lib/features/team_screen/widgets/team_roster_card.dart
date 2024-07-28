import 'package:auto_route/auto_route.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
import 'package:cyberapp/router/router.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class TeamRosterCard extends StatelessWidget {
  const TeamRosterCard({
    super.key,
    required this.team,
  });

  final Team team;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor.withOpacity(0.05),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: team.getPlayers
            .map((player) => GestureDetector(
                  onTap: () =>
                      AutoRouter.of(context).push(PlayerRoute(player: player)),
                  child: Column(
                    children: [
                      ImageTemplate(image: AssetImage(player.photoUrl)),
                      Text(player.nickname)
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
