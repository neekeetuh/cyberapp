// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_match_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcomingMatchImpl _$$UpcomingMatchImplFromJson(Map<String, dynamic> json) =>
    _$UpcomingMatchImpl(
      teamOne: json['team1'] as String,
      teamTwo: json['team2'] as String,
      timeUntilMatch: json['time_until_match'] as String,
      matchSeries: json['match_series'] as String,
      matchEvent: json['match_event'] as String,
      unixTimestamp: json['unix_timestamp'] as String,
      matchPage: json['match_page'] as String,
    );

Map<String, dynamic> _$$UpcomingMatchImplToJson(_$UpcomingMatchImpl instance) =>
    <String, dynamic>{
      'team1': instance.teamOne,
      'team2': instance.teamTwo,
      'time_until_match': instance.timeUntilMatch,
      'match_series': instance.matchSeries,
      'match_event': instance.matchEvent,
      'unix_timestamp': instance.unixTimestamp,
      'match_page': instance.matchPage,
    };
