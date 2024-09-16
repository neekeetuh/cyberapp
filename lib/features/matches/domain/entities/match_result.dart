import 'package:cyberapp/features/matches/data/data.dart';
import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:cyberapp/features/matches/domain/entities/entities.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'match_result.g.dart';
@HiveType(typeId: 3)
class MatchResult implements MatchData {
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
  final String timeCompleted;
  @HiveField(6)
  final String roundInfo;
  @HiveField(7)
  final String tournamentName;
  @HiveField(8)
  @override
  final String matchPage;
  @HiveField(9)
  final String tournamentIcon;

  const MatchResult(
      {required this.id,
      required this.teamOne,
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
        id: const Uuid().v4(),
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
