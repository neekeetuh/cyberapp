import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats_dto.g.dart';
part 'stats_dto.freezed.dart';
@freezed
class StatsDto with _$StatsDto{
  const factory StatsDto({
    @JsonKey(name: 'player') required final String playerName,
    @JsonKey(name: 'org') required final String teamTag,
    @JsonKey(name: 'rating') required final String rating,
    @JsonKey(name: 'average_combat_score') required final String acs,
    @JsonKey(name: 'kill_deaths') required final String kd,
    @JsonKey(name: 'kill_assists_survived_traded') required final String kast,
    @JsonKey(name: 'average_damage_per_round') required final String adpr,
    @JsonKey(name: 'kills_per_round') required final String kpr,
    @JsonKey(name: 'assists_per_round') required final String apr,
    @JsonKey(name: 'first_kills_per_round') required final String fkpr,
    @JsonKey(name: 'first_deaths_per_round') required final String fdpr,
    @JsonKey(name: 'headshot_percentage') required final String hs,
    @JsonKey(name: 'clutch_success_percentage') required final String csp,
  }) = _StatsDto;

  factory StatsDto.fromJson(Map<String, Object?> json) => _$StatsDtoFromJson(json);
}