import 'package:cyberapp/data/data.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/teams/teams.dart';

class MatchesRepository {
  static final List<FakeMatchData> matches = [
    FakeMatchData(
      id: 0,
      teams: [TeamsRepository.teams[4], TeamsRepository.teams[5]],
      date: DateTime.utc(2024, DateTime.july, 2),
      score: [2, 0],
      discipline: Discipline.counterStrike2,
    ),
    FakeMatchData(
      id: 1,
      teams: [TeamsRepository.teams[0], TeamsRepository.teams[2]],
      date: DateTime.utc(2024, DateTime.july, 12),
      score: [0, 0],
      discipline: Discipline.valorant,
    ),
    FakeMatchData(
      id: 2,
      teams: [TeamsRepository.teams[5], TeamsRepository.teams[4]],
      date: DateTime.utc(2024, DateTime.july, 2),
      score: [2, 0],
      discipline: Discipline.counterStrike2,
    ),
    FakeMatchData(
      id: 3,
      teams: [TeamsRepository.teams[2], TeamsRepository.teams[0]],
      date: DateTime.utc(2024, DateTime.july, 12),
      score: [0, 2],
      discipline: Discipline.valorant,
    )
  ];
}
