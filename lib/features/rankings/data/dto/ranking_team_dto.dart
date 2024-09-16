import 'package:json_annotation/json_annotation.dart';

part 'ranking_team_dto.g.dart';

@JsonSerializable()
class RankingTeamDto {
  const RankingTeamDto(
      {required this.rank,
      required this.teamName,
      required this.country,
      required this.record,
      required this.earnings,
      required this.logo});

  @JsonKey(name: 'rank')
  final String rank;
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

  factory RankingTeamDto.fromJson(Map<String, dynamic> json) {
    return _$RankingTeamDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RankingTeamDtoToJson(this);
}
