import 'package:cyberapp/features/stats/data/data.dart';

class Stats {
  final String playerName;
  final String teamTag;
  final String rating;
  final String acs;
  final String kd;
  final String kast;
  final String adpr;
  final String kpr;
  final String apr;
  final String fkpr;
  final String fdpr;

  final String hs;
  final String csp;

  const Stats(
      {required this.playerName,
      required this.teamTag,
      required this.rating,
      required this.acs,
      required this.kd,
      required this.kast,
      required this.adpr,
      required this.kpr,
      required this.apr,
      required this.fkpr,
      required this.fdpr,
      required this.hs,
      required this.csp});

  factory Stats.fromDto(StatsDto dto) {
    return Stats(
        playerName: dto.playerName,
        teamTag: dto.teamTag,
        rating: dto.rating,
        acs: dto.acs,
        kd: dto.kd,
        kast: dto.kast,
        adpr: dto.adpr,
        kpr: dto.kpr,
        apr: dto.apr,
        fkpr: dto.fkpr,
        fdpr: dto.fdpr,
        hs: dto.hs,
        csp: dto.csp);
  }
}
