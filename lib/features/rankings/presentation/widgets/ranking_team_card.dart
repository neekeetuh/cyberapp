import 'package:cyberapp/features/rankings/domain/domain.dart';
import 'package:cyberapp/ui/theme/theme.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class RankingTeamCard extends StatelessWidget {
  const RankingTeamCard({
    super.key,
    required this.rankingTeam,
  });

  final RankingTeam rankingTeam;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: secondaryBackgroundColor),
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Text(
            rankingTeam.rank.toString(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          ImageTemplate(
            image: NetworkImage(
                'http:${rankingTeam.getLogoOrDefault}'),
            borderRadius: 0,
          ),
          Expanded(
              child: Text(
                rankingTeam.teamName,
                style: Theme.of(context).textTheme.bodyLarge,
              )),
          Column(
            children: [
              Text(rankingTeam.country),
              Text(rankingTeam.earnings),
              Text(rankingTeam.record),
            ],
          )
        ],
      ),
    );
  }
}