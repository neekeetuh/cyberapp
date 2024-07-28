import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ranking_team.g.dart';

@JsonSerializable()
class RankingTeam extends Equatable {
  const RankingTeam(
      {required this.rank,
      required this.teamName,
      required this.country,
      required this.record,
      required this.earnings,
      required this.logo});

  @JsonKey(name: 'rank', toJson: _rankToJson, fromJson: _rankFromJson)
  final int rank;
  @JsonKey(name: 'team')
  final String teamName;
  @JsonKey(name: 'country')
  final String country;
  @JsonKey(name: 'record')
  final String record;
  @JsonKey(name: 'earnings')
  final String earnings;
  @JsonKey(name: 'logo')
  final String logo;

  factory RankingTeam.fromJson(Map<String, dynamic> json) {
    return _$RankingTeamFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RankingTeamToJson(this);

  static int _rankFromJson(String rank) {
    return int.parse(rank);
  }

  static String _rankToJson(int rank) {
    return rank.toString();
  }

  String get getLogoOrDefault{
    return logo != '' ? logo : '//www.vlr.gg/img/vlr/tmp/vlr.png';
  }

  @override
  List<Object?> get props => [rank, teamName, country, record, earnings, logo];
}
