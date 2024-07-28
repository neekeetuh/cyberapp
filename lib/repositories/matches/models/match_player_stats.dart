import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/players/models/models.dart';

class MatchPlayerStats {
  final Player player;
  final FakeMatchData match;

  final Map<PlayerStats, int> stats;

  MatchPlayerStats(
      {required this.player,
      required this.match,
      this.stats = const {
        PlayerStats.kills: 65,
        PlayerStats.deaths: 26,
        PlayerStats.assists: 13,
        PlayerStats.score: 255,
      }});

  int getStatByName(PlayerStats statName) {
    return stats[statName] ?? -1;
  }
}

enum PlayerStats {
  kills, deaths, assists, score
}