// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchResultImpl _$$MatchResultImplFromJson(Map<String, dynamic> json) =>
    _$MatchResultImpl(
      teamOne: json['team1'] as String,
      teamTwo: json['team2'] as String,
      scoreOne: json['score1'] as String,
      scoreTwo: json['score2'] as String,
      timeCompleted: json['time_completed'] as String,
      roundInfo: json['round_info'] as String,
      tournamentName: json['tournament_name'] as String,
      matchPage: json['match_page'] as String,
      tournamentIcon: json['tournament_icon'] as String,
    );

Map<String, dynamic> _$$MatchResultImplToJson(_$MatchResultImpl instance) =>
    <String, dynamic>{
      'team1': instance.teamOne,
      'team2': instance.teamTwo,
      'score1': instance.scoreOne,
      'score2': instance.scoreTwo,
      'time_completed': instance.timeCompleted,
      'round_info': instance.roundInfo,
      'tournament_name': instance.tournamentName,
      'match_page': instance.matchPage,
      'tournament_icon': instance.tournamentIcon,
    };
