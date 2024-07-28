import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:flutter/material.dart';

class UpcomingMatchHeader extends StatelessWidget {
  const UpcomingMatchHeader({
    super.key,
    required this.match,
  });

  final UpcomingMatch match;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Text(
            match.matchEvent,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            match.matchSeries,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10,),
          Text(
            match.timeUntilMatch,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.red),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}