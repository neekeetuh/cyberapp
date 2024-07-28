import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:flutter/material.dart';

class StatsPlayerCard extends StatelessWidget {
  const StatsPlayerCard({
    super.key,
    required this.stats,
    required this.rank,
  });

  final Stats stats;

  final int rank;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 30,
                child: Text(
                  (rank).toString(),
                  style:
                      Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Text(
                stats.playerName,
                style:
                    Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 18),
              )),
              SizedBox(
                width: 150,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      stats.rating,
                      style: TextStyle(
                        color: double.parse(stats.rating) >= 1.1
                            ? Colors.green
                            : double.parse(stats.rating) >= 0.9 ? Colors.blueGrey: Colors.red,
                        fontWeight: FontWeight.w600,fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(stats.teamTag, style: Theme.of(context).textTheme.bodyLarge,),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
