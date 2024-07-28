import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:flutter/material.dart';

class MatchHeaderScoreboard extends StatelessWidget {
  const MatchHeaderScoreboard({
    super.key,
    required this.match,
  });

  final FakeMatchData match;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(match.formattedDate),
        !match.dateDifferenceInHours.isNegative
            ? Text(
                'IN ${match.dateDifferenceInHours.abs()} HRS',
                style: TextStyle(
                  color: match.dateDifferenceInHours.isNegative
                      ? Colors.red
                      : Colors.green,
                  fontSize: 12,
                ),
              )
            : Text(
                '${match.dateDifferenceInHours.abs()} HRS AGO',
                style: TextStyle(
                  color: match.dateDifferenceInHours.isNegative
                      ? Colors.red
                      : Colors.green,
                  fontSize: 12,
                ),
              ),
        RichText(
            text: TextSpan(
                style: const TextStyle(fontSize: 32, color: Colors.grey),
                children: [
              TextSpan(
                text: '${match.score[0]}',
                style: TextStyle(
                    color: match.score[0] > match.score[1]
                        ? Colors.green
                        : match.score[0] < match.score[1]
                            ? Colors.red
                            : Colors.grey),
              ),
              const TextSpan(text: ' : '),
              TextSpan(
                  text: '${match.score[1]}',
                  style: TextStyle(
                      color: match.score[1] > match.score[0]
                          ? Colors.green
                          : match.score[1] < match.score[0]
                              ? Colors.red
                              : Colors.grey)),
            ])),
      ],
    );
  }
}
