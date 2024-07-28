import 'package:cyberapp/repositories/matches/matches.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';
class Player {
  final int id;
  final String nickname;
  final String firstName;
  final String lastName;

  DateTime? birthday;

  final String photoUrl;
  final Team team;

  Player(
      {required this.id,
      required this.nickname,
      required this.firstName,
      required this.lastName,
      this.birthday,
      required this.team,
      this.photoUrl = 'assets/images/png/pfp.png'}) {
    birthday = birthday ?? DateTime.now();
  }

  MatchPlayerStats getStatsInMatch(FakeMatchData match) {
    return MatchesPlayersStatsRepository.stats.firstWhere(
        (stats) => stats.player.id == id && stats.match.id == match.id);
  }

  String getStringStatInMatchByName(FakeMatchData match, PlayerStats name) {
    try {
      return getStatsInMatch(match).getStatByName(name).toString();
    } catch (e) {
      return '-';
    }
  }

  // List<MatchData> get getMatchesHistory {
  //   return team.getMatchesHistory;
  // }
}
