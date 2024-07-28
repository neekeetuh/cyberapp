import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:flutter/material.dart';

class MatchResultScoreboard extends StatelessWidget {
  const MatchResultScoreboard({
    super.key,
    required this.matchResult,
  });

  final MatchResult matchResult;

  @override
  Widget build(BuildContext context) {
    final (scoreboardColorOne, scoreboardColorTwo) =
    getScoreboardColors(matchResult.scoreOneInt, matchResult.scoreTwoInt);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              matchResult.teamOne,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RichText(
                text: TextSpan(
                    text: matchResult.scoreOne,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: scoreboardColorOne),
                    children: [
                      const TextSpan(
                          text: '  :  ', style: TextStyle(color: Colors.grey)),
                      TextSpan(
                          text: matchResult.scoreTwo,
                          style: TextStyle(color: scoreboardColorTwo)),
                    ])),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              matchResult.teamTwo,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}

(Color, Color) getScoreboardColors(int scoreOne, int scoreTwo) {
  return scoreOne > scoreTwo
      ? (Colors.green, Colors.red)
      : scoreOne < scoreTwo
      ? (Colors.red, Colors.green)
      : (Colors.grey, Colors.grey);
}