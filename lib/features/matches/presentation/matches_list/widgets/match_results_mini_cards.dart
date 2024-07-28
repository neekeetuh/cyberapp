import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/presentation/matches_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MatchResultsMiniCards extends StatelessWidget {
  const MatchResultsMiniCards({
    super.key, required this.matches,
  });

  final List<MatchResult> matches;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: matches.length,
          itemBuilder: (context, index) {
            return MatchResultMiniCard(match: matches[index]);
          }),
    );
  }
}