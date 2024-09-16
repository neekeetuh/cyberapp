// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_team_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingTeamDto _$RankingTeamDtoFromJson(Map<String, dynamic> json) =>
    RankingTeamDto(
      rank: json['rank'] as String,
      teamName: json['team'] as String,
      country: json['country'] as String,
      record: json['record'] as String,
      earnings: json['earnings'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$RankingTeamDtoToJson(RankingTeamDto instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'team': instance.teamName,
      'country': instance.country,
      'record': instance.record,
      'earnings': instance.earnings,
      'logo': instance.logo,
    };
