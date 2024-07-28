import 'package:cyberapp/data/data.dart';
import 'package:cyberapp/repositories/teams/models/models.dart';

class TeamsRepository {
  static final List<Team> teams = [
    Team(
      id: 0,
      title: 'Sentinels',
      discipline: Discipline.valorant,
    ),
    Team(
      id: 1,
      title: 'NRG',
      discipline: Discipline.valorant,
    ),
    Team(
      id: 2,
      title: 'Cloud9',
      discipline: Discipline.valorant,
    ),
    Team(
      id: 3,
      title: 'Leviatan',
      discipline: Discipline.valorant,
    ),
    Team(
      id: 4,
      title: 'Natus Vincere',
      discipline: Discipline.counterStrike2,
    ),
    Team(
      id: 5,
      title: 'Spirit',
      discipline: Discipline.counterStrike2,
    ),
    Team(
      id: 6,
      title: 'Spirit',
      discipline: Discipline.dota2,
    ),
    Team(
      id: 7,
      title: 'Natus Vincere',
      discipline: Discipline.dota2,
    ),
  ];
}
