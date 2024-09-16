import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_result_dto.freezed.dart';

part 'match_result_dto.g.dart';

@freezed
class MatchResultDto with _$MatchResultDto {
  const MatchResultDto._();

  const factory MatchResultDto({
    @JsonKey(name: 'team1') required final String teamOne,
    @JsonKey(name: 'team2') required final String teamTwo,
    @JsonKey(name: 'score1') required final String scoreOne,
    @JsonKey(name: 'score2') required final String scoreTwo,
    @JsonKey(name: 'time_completed') required final String timeCompleted,
    @JsonKey(name: 'round_info') required final String roundInfo,
    @JsonKey(name: 'tournament_name') required final String tournamentName,
    @JsonKey(name: 'match_page') required final String matchPage,
    @JsonKey(name: 'tournament_icon') required final String tournamentIcon,
  }) = _MatchResult;

  factory MatchResultDto.fromJson(Map<String, Object?> json) =>
      _$MatchResultDtoFromJson(json);
}
