import 'package:cyberapp/features/rankings/data/data.dart';
import 'package:equatable/equatable.dart';

class RankingTeam extends Equatable {
  final int rank;
  final String teamName;
  final String country;
  final String record;
  final String earnings;
  final String logo;

  const RankingTeam(
      {required this.rank,
      required this.teamName,
      required this.country,
      required this.record,
      required this.earnings,
      required this.logo});

  factory RankingTeam.fromDto(RankingTeamDto dto) {
    return RankingTeam(
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
