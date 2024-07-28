import 'package:cyberapp/repositories/matches/matches.dart';
import 'package:cyberapp/repositories/matches/models/models.dart';
import 'package:cyberapp/repositories/players/players.dart';

class MatchesPlayersStatsRepository{
  static final List<MatchPlayerStats> stats = [
    MatchPlayerStats(player: PlayersRepository.players[0], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[1], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[2], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[3], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[4], match: MatchesRepository.matches[0]),

    MatchPlayerStats(player: PlayersRepository.players[5], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[6], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[7], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[8], match: MatchesRepository.matches[0]),
    MatchPlayerStats(player: PlayersRepository.players[9], match: MatchesRepository.matches[0]),


    // MatchPlayerStats(player: PlayersRepository.players[0], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[1], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[2], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[3], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[4], match: MatchesRepository.matches[2]),
    //
    // MatchPlayerStats(player: PlayersRepository.players[5], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[6], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[7], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[8], match: MatchesRepository.matches[2]),
    // MatchPlayerStats(player: PlayersRepository.players[9], match: MatchesRepository.matches[2]),
  ];
}