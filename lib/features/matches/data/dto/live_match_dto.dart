import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_match_dto.freezed.dart';

part 'live_match_dto.g.dart';

@freezed
class LiveMatchDto with _$LiveMatchDto {
  const LiveMatchDto._();

  const factory LiveMatchDto({
    @JsonKey(name: 'team1') required final String teamOne,
    @JsonKey(name: 'team2') required final String teamTwo,
    @JsonKey(name: 'score1') required final String scoreOne,
    @JsonKey(name: 'score2') required final String scoreTwo,
    @JsonKey(name: 'team1_round_ct') required final String teamOneRoundsCT,
    @JsonKey(name: 'team1_round_t') required final String teamOneRoundsT,
    @JsonKey(name: 'team2_round_ct') required final String teamTwoRoundsCT,
    @JsonKey(name: 'team2_round_t') required final String teamTwoRoundsT,
    @JsonKey(name: 'map_number') required final String mapNumber,
    @JsonKey(name: 'current_map') required final String currentMap,
    @JsonKey(name: 'time_until_match') required final String timeUntilMatch,
    @JsonKey(name: 'match_event') required final String matchEvent,
    @JsonKey(name: 'match_series') required final String matchSeries,
    @JsonKey(name: 'unix_timestamp') required final String unixTimestamp,
    @JsonKey(name: 'match_page') required final String matchPage,
  }) = _LiveMatch;

  factory LiveMatchDto.fromJson(Map<String, Object?> json) =>
      _$LiveMatchDtoFromJson(json);
}
