import 'package:cyberapp/features/rankings/data/data.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'ranking_team.g.dart';

@HiveType(typeId: 6)
class RankingTeam extends Equatable {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final int rank;
  @HiveField(2)
  final String teamName;
  @HiveField(3)
  final String country;
  @HiveField(4)
  final String record;
  @HiveField(5)
  final String earnings;
  @HiveField(6)
  final String logo;

  const RankingTeam(
      {required this.id,
      required this.rank,
      required this.teamName,
      required this.country,
      required this.record,
      required this.earnings,
      required this.logo});

  factory RankingTeam.fromDto(RankingTeamDto dto) {
    return RankingTeam(
        id: const Uuid().v4(),
        rank: _rankFromJson(dto.rank),
        teamName: dto.teamName,
        country: dto.country,
        record: dto.record,
        earnings: dto.earnings,
        logo: dto.logo);
  }

  static int _rankFromJson(String rank) {
    return int.parse(rank);
  }

  static String _rankToJson(int rank) {
    return rank.toString();
  }

  String get getLogoOrDefault {
    return logo != '' ? logo : '//www.vlr.gg/img/vlr/tmp/vlr.png';
  }

  @override
  List<Object?> get props => [rank, teamName, country, record, earnings, logo];
}
