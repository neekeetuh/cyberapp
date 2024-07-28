import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_result.freezed.dart';
part 'match_result.g.dart';
@freezed
class MatchResult with _$MatchResult implements MatchData {

  const MatchResult._();
  const factory MatchResult ({
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

  factory MatchResult.fromJson(Map<String, Object?> json) => _$MatchResultFromJson(json);

  @override
  String get matchPageUrl => 'https://www.vlr.gg$matchPage';

  static String get queryMatchType => 'results';

  int get scoreOneInt{
    return int.parse(scoreOne);
  }

  int get scoreTwoInt{
    return int.parse(scoreTwo);
  }
}