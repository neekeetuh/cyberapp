import 'package:cyberapp/features/stats/data/data.dart';
import 'package:cyberapp/features/stats/domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'stats.g.dart';

@HiveType(typeId: 7)
class Stats extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String playerName;
  @HiveField(2)
  final String teamTag;
  @HiveField(3)
  final String rating;
  @HiveField(4)
  final String acs;
  @HiveField(5)
  final String kd;
  @HiveField(6)
  final String kast;
  @HiveField(7)
  final String adpr;
  @HiveField(8)
  final String kpr;
  @HiveField(9)
  final String apr;
  @HiveField(10)
  final String fkpr;
  @HiveField(11)
  final String fdpr;
  @HiveField(12)
  final String hs;
  @HiveField(13)
  final String csp;
  @HiveField(14)
  final String timeSpan;
  @HiveField(15)
  final String regionCode;

  const Stats(
      {required this.id,
      required this.playerName,
      required this.teamTag,
      required this.rating,
      required this.acs,
      required this.kd,
      required this.kast,
      required this.adpr,
      required this.kpr,
      required this.apr,
      required this.fkpr,
      required this.fdpr,
      required this.hs,
      required this.csp,
      required this.timeSpan,
      required this.regionCode});

  factory Stats.fromDto(
      {required StatsDto dto,
      required StatsTimeSpans timeSpan,
      required StatsRegion region}) {
    return Stats(
        id: const Uuid().v4(),
        playerName: dto.playerName,
        teamTag: dto.teamTag,
        rating: dto.rating,
        acs: dto.acs,
        kd: dto.kd,
        kast: dto.kast,
        adpr: dto.adpr,
        kpr: dto.kpr,
        apr: dto.apr,
        fkpr: dto.fkpr,
        fdpr: dto.fdpr,
        hs: dto.hs,
        csp: dto.csp,
        timeSpan: timeSpan.jsonCode,
        regionCode: region.regionCode);
  }

  String get uniqueKey {
    return '$playerName+$regionCode+$timeSpan';
  }

  @override
  List<Object?> get props => [
        id,
        playerName,
        teamTag,
        rating,
        acs,
        kd,
        kast,
        adpr,
        kpr,
        apr,
        fkpr,
        fdpr,
        hs,
        csp,
        timeSpan,
        regionCode
      ];
}
