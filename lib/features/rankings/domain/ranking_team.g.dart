// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingTeam _$RankingTeamFromJson(Map<String, dynamic> json) => RankingTeam(
      rank: RankingTeam._rankFromJson(json['rank'] as String),
      teamName: json['team'] as String,
      country: json['country'] as String,
      record: json['record'] as String,
      earnings: json['earnings'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$RankingTeamToJson(RankingTeam instance) =>
    <String, dynamic>{
      'rank': RankingTeam._rankToJson(instance.rank),
      'team': instance.teamName,
      'country': instance.country,
      'record': instance.record,
      'earnings': instance.earnings,
      'logo': instance.logo,
    };
