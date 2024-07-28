import 'package:cyberapp/features/matches/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcoming_match.freezed.dart';
part 'upcoming_match.g.dart';
@freezed
class UpcomingMatch with _$UpcomingMatch implements MatchData{

  const UpcomingMatch._();
  const factory UpcomingMatch ({
    @JsonKey(name: 'team1') required final String teamOne,
    @JsonKey(name: 'team2') required final String teamTwo,
    @JsonKey(name: 'time_until_match') required final String timeUntilMatch,
    @JsonKey(name: 'match_series') required final String matchSeries,
    @JsonKey(name: 'match_event') required final String matchEvent,
    @JsonKey(name: 'unix_timestamp') required final String unixTimestamp,
    @JsonKey(name: 'match_page') required final String matchPage,
}) = _UpcomingMatch;

  factory UpcomingMatch.fromJson(Map<String, Object?> json) => _$UpcomingMatchFromJson(json);

  @override
  String get matchPageUrl => matchPage;

  static String get queryMatchType => 'upcoming';
}