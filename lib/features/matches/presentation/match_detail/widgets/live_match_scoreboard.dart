import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:flutter/material.dart';

class LiveMatchScoreboard extends StatelessWidget {
  const LiveMatchScoreboard({
    super.key,
    required this.match,
  });

  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              match.teamOne,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: RichText(
                text: TextSpan(
                    text: match.scoreOne,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge,
                    children: [
                      const TextSpan(
                          text: '  :  ',
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(
                        text: match.scoreTwo,),
                    ])),
          ),
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              match.teamTwo,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}