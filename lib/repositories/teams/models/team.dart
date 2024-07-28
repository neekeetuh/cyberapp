import 'package:cyberapp/data/data.dart';
import 'package:cyberapp/repositories/matches/matches.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:cyberapp/repositories/players/players.dart';

class Team {
  final int id;
  final String title;
  final String logoUrl;

  final int points;

  final Discipline discipline;

  Team({
    required this.id,
    required this.title,
    this.logoUrl = 'assets/images/png/team_default.png',
    this.points = 0,
    required this.discipline,
  });

  List<Player> get getPlayers {
    return PlayersRepository.players
        .where((player) => player.team.id == id)
        .toList();
  }

  List<FakeMatchData> get getMatchesHistory {
    return MatchesRepository.matches
        .where((match) => match.teams[0].id == id || match.teams[1].id == id)
        .toList();
  }
}
