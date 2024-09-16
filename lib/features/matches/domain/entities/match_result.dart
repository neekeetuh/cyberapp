import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/entities/entities.dart';

class MatchResult implements MatchData {
  @override
  final String teamOne;
  @override
  final String teamTwo;
  final String scoreOne;
  final String scoreTwo;
  final String timeCompleted;
  final String roundInfo;
  final String tournamentName;
  @override
  final String matchPage;
  final String tournamentIcon;

  const MatchResult(
      {required this.teamOne,
      required this.teamTwo,
      required this.scoreOne,
      required this.scoreTwo,
      required this.timeCompleted,
      required this.roundInfo,
      required this.tournamentName,
      required this.matchPage,
      required this.tournamentIcon});

  factory MatchResult.fromDto(MatchResultDto dto) {
    return MatchResult(
        teamOne: dto.teamOne,
        teamTwo: dto.teamTwo,
        scoreOne: dto.scoreOne,
        scoreTwo: dto.scoreTwo,
        timeCompleted: dto.timeCompleted,
        roundInfo: dto.roundInfo,
        tournamentName: dto.tournamentName,
        matchPage: dto.matchPage,
        tournamentIcon: dto.tournamentIcon);
  }

  @override
  String get matchPageUrl => 'https://www.vlr.gg$matchPage';

  static String get queryMatchType => 'results';

  int get scoreOneInt {
    return int.parse(scoreOne);
  }

  int get scoreTwoInt {
    return int.parse(scoreTwo);
  }
}
