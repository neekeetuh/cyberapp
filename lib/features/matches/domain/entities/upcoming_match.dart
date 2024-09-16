import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/entities/entities.dart';

class UpcomingMatch implements MatchData {
  @override
  final String teamOne;
  @override
  final String teamTwo;
  final String timeUntilMatch;
  final String matchSeries;
  final String matchEvent;
  final String unixTimestamp;
  @override
  final String matchPage;

  const UpcomingMatch(
      {required this.teamOne,
      required this.teamTwo,
      required this.timeUntilMatch,
      required this.matchSeries,
      required this.matchEvent,
      required this.unixTimestamp,
      required this.matchPage});

  factory UpcomingMatch.fromDto(UpcomingMatchDto dto) {
    return UpcomingMatch(
        teamOne: dto.teamOne,
        teamTwo: dto.teamTwo,
        timeUntilMatch: dto.timeUntilMatch,
        matchSeries: dto.matchSeries,
        matchEvent: dto.matchEvent,
        unixTimestamp: dto.unixTimestamp,
        matchPage: dto.matchPage);
  }

  @override
  String get matchPageUrl => matchPage;

  static String get queryMatchType => 'upcoming';
}
