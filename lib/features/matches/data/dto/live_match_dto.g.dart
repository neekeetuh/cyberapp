// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveMatchImpl _$$LiveMatchImplFromJson(Map<String, dynamic> json) =>
    _$LiveMatchImpl(
      teamOne: json['team1'] as String,
      teamTwo: json['team2'] as String,
      scoreOne: json['score1'] as String,
      scoreTwo: json['score2'] as String,
      teamOneRoundsCT: json['team1_round_ct'] as String,
      teamOneRoundsT: json['team1_round_t'] as String,
      teamTwoRoundsCT: json['team2_round_ct'] as String,
      teamTwoRoundsT: json['team2_round_t'] as String,
      mapNumber: json['map_number'] as String,
      currentMap: json['current_map'] as String,
      timeUntilMatch: json['time_until_match'] as String,
      matchEvent: json['match_event'] as String,
      matchSeries: json['match_series'] as String,
      unixTimestamp: json['unix_timestamp'] as String,
      matchPage: json['match_page'] as String,
    );

Map<String, dynamic> _$$LiveMatchImplToJson(_$LiveMatchImpl instance) =>
    <String, dynamic>{
      'team1': instance.teamOne,
      'team2': instance.teamTwo,
      'score1': instance.scoreOne,
      'score2': instance.scoreTwo,
      'team1_round_ct': instance.teamOneRoundsCT,
      'team1_round_t': instance.teamOneRoundsT,
      'team2_round_ct': instance.teamTwoRoundsCT,
      'team2_round_t': instance.teamTwoRoundsT,
      'map_number': instance.mapNumber,
      'current_map': instance.currentMap,
      'time_until_match': instance.timeUntilMatch,
      'match_event': instance.matchEvent,
      'match_series': instance.matchSeries,
      'unix_timestamp': instance.unixTimestamp,
      'match_page': instance.matchPage,
    };
