import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class UpcomingMatchMiniCard extends StatelessWidget {
  const UpcomingMatchMiniCard({
    super.key,
    required this.match,
  });

  final UpcomingMatch match;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(match.teamOne),
              Text(match.teamTwo),
            ],
          ),
          Text(match.timeUntilMatch)
        ],
      ),
    );
  }
}