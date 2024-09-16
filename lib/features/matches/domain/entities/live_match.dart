import 'package:cyberapp/features/matches/data/dto/live_match_dto.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';

class LiveMatch implements MatchData {
  @override
  final String teamOne;
  @override
  final String teamTwo;
  final String scoreOne;
  final String scoreTwo;
  final String teamOneRoundsCT;
  final String teamOneRoundsT;
  final String teamTwoRoundsCT;
  final String teamTwoRoundsT;
  final String mapNumber;
  final String currentMap;
  final String timeUntilMatch;
  final String matchEvent;
  final String matchSeries;
  final String unixTimestamp;
  @override
  final String matchPage;

  const LiveMatch({required this.teamOne,
    required this.teamTwo,
    required this.scoreOne,
    required this.scoreTwo,
    required this.teamOneRoundsCT,
    required this.teamOneRoundsT,
    required this.teamTwoRoundsCT,
    required this.teamTwoRoundsT,
    required this.mapNumber,
    required this.currentMap,
    required this.timeUntilMatch,
    required this.matchEvent,
    required this.matchSeries,
    required this.unixTimestamp,
    required this.matchPage});

  factory LiveMatch.fromDto (LiveMatchDto dto){
    return LiveMatch(teamOne: dto.teamOne,
        teamTwo: dto.teamTwo,
        scoreOne: dto.scoreOne,
        scoreTwo: dto.scoreTwo,
        teamOneRoundsCT: dto.teamOneRoundsCT,
        teamOneRoundsT: dto.teamOneRoundsT,
        teamTwoRoundsCT: dto.teamTwoRoundsCT,
        teamTwoRoundsT: dto.teamTwoRoundsT,
        mapNumber: dto.mapNumber,
        currentMap: dto.currentMap,
        timeUntilMatch: dto.timeUntilMatch,
        matchEvent: dto.matchEvent,
        matchSeries: dto.matchSeries,
        unixTimestamp: dto.unixTimestamp,
        matchPage: dto.matchPage);
  }

  @override
  String get matchPageUrl => matchPage;

  static String get queryMatchType => 'live_score';
}
