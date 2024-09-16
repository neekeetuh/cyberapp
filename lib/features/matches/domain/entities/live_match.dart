import 'package:cyberapp/features/matches/data/dto/live_match_dto.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'live_match.g.dart';

@HiveType(typeId: 2)
class LiveMatch implements MatchData {
  @HiveField(0)
  @override
  final String id;
  @HiveField(1)
  @override
  final String teamOne;
  @HiveField(2)
  @override
  final String teamTwo;
  @HiveField(3)
  final String scoreOne;
  @HiveField(4)
  final String scoreTwo;
  @HiveField(5)
  final String teamOneRoundsCT;
  @HiveField(6)
  final String teamOneRoundsT;
  @HiveField(7)
  final String teamTwoRoundsCT;
  @HiveField(8)
  final String teamTwoRoundsT;
  @HiveField(9)
  final String mapNumber;
  @HiveField(10)
  final String currentMap;
  @HiveField(11)
  final String timeUntilMatch;
  @HiveField(12)
  final String matchEvent;
  @HiveField(13)
  final String matchSeries;
  @HiveField(14)
  final String unixTimestamp;
  @HiveField(15)
  @override
  final String matchPage;

  const LiveMatch(
      {required this.id,
      required this.teamOne,
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

  factory LiveMatch.fromDto(LiveMatchDto dto) {
    return LiveMatch(
        id: const Uuid().v4(),
        teamOne: dto.teamOne,
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
