import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_match_dto.freezed.dart';

part 'upcoming_match_dto.g.dart';

@freezed
class UpcomingMatchDto with _$UpcomingMatchDto {
  const UpcomingMatchDto._();

  const factory UpcomingMatchDto({
    @JsonKey(name: 'team1') required final String teamOne,
    @JsonKey(name: 'team2') required final String teamTwo,
    @JsonKey(name: 'time_until_match') required final String timeUntilMatch,
    @JsonKey(name: 'match_series') required final String matchSeries,
    @JsonKey(name: 'match_event') required final String matchEvent,
    @JsonKey(name: 'unix_timestamp') required final String unixTimestamp,
    @JsonKey(name: 'match_page') required final String matchPage,
  }) = _UpcomingMatch;

  factory UpcomingMatchDto.fromJson(Map<String, Object?> json) =>
      _$UpcomingMatchDtoFromJson(json);
}
