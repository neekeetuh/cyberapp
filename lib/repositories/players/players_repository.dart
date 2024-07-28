import 'package:cyberapp/repositories/players/models/models.dart';
import 'package:cyberapp/repositories/teams/teams.dart';

class PlayersRepository {
  static final List<Player> players = [
    Player(
        id: 0,
        nickname: 's1mple',
        firstName: 'Alexander',
        lastName: 'Kostyliev',
        team: TeamsRepository.teams[4]),
    Player(
        id: 1,
        nickname: 'electronic',
        firstName: 'Denis',
        lastName: 'Sharipov',
        team: TeamsRepository.teams[4]),
    Player(
        id: 2,
        nickname: 'Perfecto',
        firstName: 'Ilya',
        lastName: 'Zalutskiy',
        team: TeamsRepository.teams[4]),
    Player(
        id: 3,
        nickname: 'Boombl4',
        firstName: 'Kirill',
        lastName: 'Mikhailov',
        team: TeamsRepository.teams[4]),
    Player(
        id: 4,
        nickname: 'b1t',
        firstName: 'Valeriy',
        lastName: 'Vakhovskiy',
        team: TeamsRepository.teams[4]),
    Player(
        id: 5,
        nickname: 'donk',
        firstName: 'Alexander',
        lastName: 'Kostyliev',
        team: TeamsRepository.teams[5]),
    Player(
        id: 6,
        nickname: 'chopper',
        firstName: 'Denis',
        lastName: 'Sharipov',
        team: TeamsRepository.teams[5]),
    Player(
        id: 7,
        nickname: 'zont1x',
        firstName: 'Ilya',
        lastName: 'Zalutskiy',
        team: TeamsRepository.teams[5]),
    Player(
        id: 8,
        nickname: 'magixx',
        firstName: 'Kirill',
        lastName: 'Mikhailov',
        team: TeamsRepository.teams[5]),
    Player(
        id: 9,
        nickname: 'sh1ro',
        firstName: 'Valeriy',
        lastName: 'Vakhovskiy',
        team: TeamsRepository.teams[5]),
  ];
}
