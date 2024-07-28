import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/ui/ui.dart';
import 'package:flutter/material.dart';

class MatchResultHeader extends StatelessWidget {
  const MatchResultHeader({
    super.key,
    required this.matchResult,
  });

  final MatchResult matchResult;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          matchResult.tournamentName,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ImageTemplate(
            image: NetworkImage(matchResult.tournamentIcon),
            height: 70,
            width: 70,
          ),
        ),
        Text(
          matchResult.roundInfo,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        Text(
          matchResult.timeCompleted,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}