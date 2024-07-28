// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatsImpl _$$StatsImplFromJson(Map<String, dynamic> json) => _$StatsImpl(
      playerName: json['player'] as String,
      teamTag: json['org'] as String,
      rating: json['rating'] as String,
      acs: json['average_combat_score'] as String,
      kd: json['kill_deaths'] as String,
      kast: json['kill_assists_survived_traded'] as String,
      adpr: json['average_damage_per_round'] as String,
      kpr: json['kills_per_round'] as String,
      apr: json['assists_per_round'] as String,
      fkpr: json['first_kills_per_round'] as String,
      fdpr: json['first_deaths_per_round'] as String,
      hs: json['headshot_percentage'] as String,
      csp: json['clutch_success_percentage'] as String,
    );

Map<String, dynamic> _$$StatsImplToJson(_$StatsImpl instance) =>
    <String, dynamic>{
      'player': instance.playerName,
      'org': instance.teamTag,
      'rating': instance.rating,
      'average_combat_score': instance.acs,
      'kill_deaths': instance.kd,
      'kill_assists_survived_traded': instance.kast,
      'average_damage_per_round': instance.adpr,
      'kills_per_round': instance.kpr,
      'assists_per_round': instance.apr,
      'first_kills_per_round': instance.fkpr,
      'first_deaths_per_round': instance.fdpr,
      'headshot_percentage': instance.hs,
      'clutch_success_percentage': instance.csp,
    };
