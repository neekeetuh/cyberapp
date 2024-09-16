import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/entities/entities.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'upcoming_match.g.dart';

@HiveType(typeId: 4)
class UpcomingMatch implements MatchData {
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
  final String timeUntilMatch;
  @HiveField(4)
  final String matchSeries;
  @HiveField(5)
  final String matchEvent;
  @HiveField(6)
  final String unixTimestamp;
  @HiveField(7)
  @override
  final String matchPage;

  const UpcomingMatch(
      {required this.id,
      required this.teamOne,
      required this.teamTwo,
      required this.timeUntilMatch,
      required this.matchSeries,
      required this.matchEvent,
      required this.unixTimestamp,
      required this.matchPage});

  factory UpcomingMatch.fromDto(UpcomingMatchDto dto) {
    return UpcomingMatch(
        id: const Uuid().v4(),
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
