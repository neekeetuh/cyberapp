// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatsDto _$StatsDtoFromJson(Map<String, dynamic> json) {
  return _StatsDto.fromJson(json);
}

/// @nodoc
mixin _$StatsDto {
  @JsonKey(name: 'player')
  String get playerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'org')
  String get teamTag => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_combat_score')
  String get acs => throw _privateConstructorUsedError;
  @JsonKey(name: 'kill_deaths')
  String get kd => throw _privateConstructorUsedError;
  @JsonKey(name: 'kill_assists_survived_traded')
  String get kast => throw _privateConstructorUsedError;
  @JsonKey(name: 'average_damage_per_round')
  String get adpr => throw _privateConstructorUsedError;
  @JsonKey(name: 'kills_per_round')
  String get kpr => throw _privateConstructorUsedError;
  @JsonKey(name: 'assists_per_round')
  String get apr => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_kills_per_round')
  String get fkpr => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_deaths_per_round')
  String get fdpr => throw _privateConstructorUsedError;
  @JsonKey(name: 'headshot_percentage')
  String get hs => throw _privateConstructorUsedError;
  @JsonKey(name: 'clutch_success_percentage')
  String get csp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsDtoCopyWith<StatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsDtoCopyWith<$Res> {
  factory $StatsDtoCopyWith(StatsDto value, $Res Function(StatsDto) then) =
      _$StatsDtoCopyWithImpl<$Res, StatsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'player') String playerName,
      @JsonKey(name: 'org') String teamTag,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'average_combat_score') String acs,
      @JsonKey(name: 'kill_deaths') String kd,
      @JsonKey(name: 'kill_assists_survived_traded') String kast,
      @JsonKey(name: 'average_damage_per_round') String adpr,
      @JsonKey(name: 'kills_per_round') String kpr,
      @JsonKey(name: 'assists_per_round') String apr,
      @JsonKey(name: 'first_kills_per_round') String fkpr,
      @JsonKey(name: 'first_deaths_per_round') String fdpr,
      @JsonKey(name: 'headshot_percentage') String hs,
      @JsonKey(name: 'clutch_success_percentage') String csp});
}

/// @nodoc
class _$StatsDtoCopyWithImpl<$Res, $Val extends StatsDto>
    implements $StatsDtoCopyWith<$Res> {
  _$StatsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? teamTag = null,
    Object? rating = null,
    Object? acs = null,
    Object? kd = null,
    Object? kast = null,
    Object? adpr = null,
    Object? kpr = null,
    Object? apr = null,
    Object? fkpr = null,
    Object? fdpr = null,
    Object? hs = null,
    Object? csp = null,
  }) {
    return _then(_value.copyWith(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      teamTag: null == teamTag
          ? _value.teamTag
          : teamTag // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      acs: null == acs
          ? _value.acs
          : acs // ignore: cast_nullable_to_non_nullable
              as String,
      kd: null == kd
          ? _value.kd
          : kd // ignore: cast_nullable_to_non_nullable
              as String,
      kast: null == kast
          ? _value.kast
          : kast // ignore: cast_nullable_to_non_nullable
              as String,
      adpr: null == adpr
          ? _value.adpr
          : adpr // ignore: cast_nullable_to_non_nullable
              as String,
      kpr: null == kpr
          ? _value.kpr
          : kpr // ignore: cast_nullable_to_non_nullable
              as String,
      apr: null == apr
          ? _value.apr
          : apr // ignore: cast_nullable_to_non_nullable
              as String,
      fkpr: null == fkpr
          ? _value.fkpr
          : fkpr // ignore: cast_nullable_to_non_nullable
              as String,
      fdpr: null == fdpr
          ? _value.fdpr
          : fdpr // ignore: cast_nullable_to_non_nullable
              as String,
      hs: null == hs
          ? _value.hs
          : hs // ignore: cast_nullable_to_non_nullable
              as String,
      csp: null == csp
          ? _value.csp
          : csp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatsDtoImplCopyWith<$Res>
    implements $StatsDtoCopyWith<$Res> {
  factory _$$StatsDtoImplCopyWith(
          _$StatsDtoImpl value, $Res Function(_$StatsDtoImpl) then) =
      __$$StatsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'player') String playerName,
      @JsonKey(name: 'org') String teamTag,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'average_combat_score') String acs,
      @JsonKey(name: 'kill_deaths') String kd,
      @JsonKey(name: 'kill_assists_survived_traded') String kast,
      @JsonKey(name: 'average_damage_per_round') String adpr,
      @JsonKey(name: 'kills_per_round') String kpr,
      @JsonKey(name: 'assists_per_round') String apr,
      @JsonKey(name: 'first_kills_per_round') String fkpr,
      @JsonKey(name: 'first_deaths_per_round') String fdpr,
      @JsonKey(name: 'headshot_percentage') String hs,
      @JsonKey(name: 'clutch_success_percentage') String csp});
}

/// @nodoc
class __$$StatsDtoImplCopyWithImpl<$Res>
    extends _$StatsDtoCopyWithImpl<$Res, _$StatsDtoImpl>
    implements _$$StatsDtoImplCopyWith<$Res> {
  __$$StatsDtoImplCopyWithImpl(
      _$StatsDtoImpl _value, $Res Function(_$StatsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playerName = null,
    Object? teamTag = null,
    Object? rating = null,
    Object? acs = null,
    Object? kd = null,
    Object? kast = null,
    Object? adpr = null,
    Object? kpr = null,
    Object? apr = null,
    Object? fkpr = null,
    Object? fdpr = null,
    Object? hs = null,
    Object? csp = null,
  }) {
    return _then(_$StatsDtoImpl(
      playerName: null == playerName
          ? _value.playerName
          : playerName // ignore: cast_nullable_to_non_nullable
              as String,
      teamTag: null == teamTag
          ? _value.teamTag
          : teamTag // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      acs: null == acs
          ? _value.acs
          : acs // ignore: cast_nullable_to_non_nullable
              as String,
      kd: null == kd
          ? _value.kd
          : kd // ignore: cast_nullable_to_non_nullable
              as String,
      kast: null == kast
          ? _value.kast
          : kast // ignore: cast_nullable_to_non_nullable
              as String,
      adpr: null == adpr
          ? _value.adpr
          : adpr // ignore: cast_nullable_to_non_nullable
              as String,
      kpr: null == kpr
          ? _value.kpr
          : kpr // ignore: cast_nullable_to_non_nullable
              as String,
      apr: null == apr
          ? _value.apr
          : apr // ignore: cast_nullable_to_non_nullable
              as String,
      fkpr: null == fkpr
          ? _value.fkpr
          : fkpr // ignore: cast_nullable_to_non_nullable
              as String,
      fdpr: null == fdpr
          ? _value.fdpr
          : fdpr // ignore: cast_nullable_to_non_nullable
              as String,
      hs: null == hs
          ? _value.hs
          : hs // ignore: cast_nullable_to_non_nullable
              as String,
      csp: null == csp
          ? _value.csp
          : csp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatsDtoImpl implements _StatsDto {
  const _$StatsDtoImpl(
      {@JsonKey(name: 'player') required this.playerName,
      @JsonKey(name: 'org') required this.teamTag,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'average_combat_score') required this.acs,
      @JsonKey(name: 'kill_deaths') required this.kd,
      @JsonKey(name: 'kill_assists_survived_traded') required this.kast,
      @JsonKey(name: 'average_damage_per_round') required this.adpr,
      @JsonKey(name: 'kills_per_round') required this.kpr,
      @JsonKey(name: 'assists_per_round') required this.apr,
      @JsonKey(name: 'first_kills_per_round') required this.fkpr,
      @JsonKey(name: 'first_deaths_per_round') required this.fdpr,
      @JsonKey(name: 'headshot_percentage') required this.hs,
      @JsonKey(name: 'clutch_success_percentage') required this.csp});

  factory _$StatsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatsDtoImplFromJson(json);

  @override
  @JsonKey(name: 'player')
  final String playerName;
  @override
  @JsonKey(name: 'org')
  final String teamTag;
  @override
  @JsonKey(name: 'rating')
  final String rating;
  @override
  @JsonKey(name: 'average_combat_score')
  final String acs;
  @override
  @JsonKey(name: 'kill_deaths')
  final String kd;
  @override
  @JsonKey(name: 'kill_assists_survived_traded')
  final String kast;
  @override
  @JsonKey(name: 'average_damage_per_round')
  final String adpr;
  @override
  @JsonKey(name: 'kills_per_round')
  final String kpr;
  @override
  @JsonKey(name: 'assists_per_round')
  final String apr;
  @override
  @JsonKey(name: 'first_kills_per_round')
  final String fkpr;
  @override
  @JsonKey(name: 'first_deaths_per_round')
  final String fdpr;
  @override
  @JsonKey(name: 'headshot_percentage')
  final String hs;
  @override
  @JsonKey(name: 'clutch_success_percentage')
  final String csp;

  @override
  String toString() {
    return 'StatsDto(playerName: $playerName, teamTag: $teamTag, rating: $rating, acs: $acs, kd: $kd, kast: $kast, adpr: $adpr, kpr: $kpr, apr: $apr, fkpr: $fkpr, fdpr: $fdpr, hs: $hs, csp: $csp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatsDtoImpl &&
            (identical(other.playerName, playerName) ||
                other.playerName == playerName) &&
            (identical(other.teamTag, teamTag) || other.teamTag == teamTag) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.acs, acs) || other.acs == acs) &&
            (identical(other.kd, kd) || other.kd == kd) &&
            (identical(other.kast, kast) || other.kast == kast) &&
            (identical(other.adpr, adpr) || other.adpr == adpr) &&
            (identical(other.kpr, kpr) || other.kpr == kpr) &&
            (identical(other.apr, apr) || other.apr == apr) &&
            (identical(other.fkpr, fkpr) || other.fkpr == fkpr) &&
            (identical(other.fdpr, fdpr) || other.fdpr == fdpr) &&
            (identical(other.hs, hs) || other.hs == hs) &&
            (identical(other.csp, csp) || other.csp == csp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, playerName, teamTag, rating, acs,
      kd, kast, adpr, kpr, apr, fkpr, fdpr, hs, csp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatsDtoImplCopyWith<_$StatsDtoImpl> get copyWith =>
      __$$StatsDtoImplCopyWithImpl<_$StatsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatsDtoImplToJson(
      this,
    );
  }
}

abstract class _StatsDto implements StatsDto {
  const factory _StatsDto(
      {@JsonKey(name: 'player') required final String playerName,
      @JsonKey(name: 'org') required final String teamTag,
      @JsonKey(name: 'rating') required final String rating,
      @JsonKey(name: 'average_combat_score') required final String acs,
      @JsonKey(name: 'kill_deaths') required final String kd,
      @JsonKey(name: 'kill_assists_survived_traded') required final String kast,
      @JsonKey(name: 'average_damage_per_round') required final String adpr,
      @JsonKey(name: 'kills_per_round') required final String kpr,
      @JsonKey(name: 'assists_per_round') required final String apr,
      @JsonKey(name: 'first_kills_per_round') required final String fkpr,
      @JsonKey(name: 'first_deaths_per_round') required final String fdpr,
      @JsonKey(name: 'headshot_percentage') required final String hs,
      @JsonKey(name: 'clutch_success_percentage')
      required final String csp}) = _$StatsDtoImpl;

  factory _StatsDto.fromJson(Map<String, dynamic> json) =
      _$StatsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'player')
  String get playerName;
  @override
  @JsonKey(name: 'org')
  String get teamTag;
  @override
  @JsonKey(name: 'rating')
  String get rating;
  @override
  @JsonKey(name: 'average_combat_score')
  String get acs;
  @override
  @JsonKey(name: 'kill_deaths')
  String get kd;
  @override
  @JsonKey(name: 'kill_assists_survived_traded')
  String get kast;
  @override
  @JsonKey(name: 'average_damage_per_round')
  String get adpr;
  @override
  @JsonKey(name: 'kills_per_round')
  String get kpr;
  @override
  @JsonKey(name: 'assists_per_round')
  String get apr;
  @override
  @JsonKey(name: 'first_kills_per_round')
  String get fkpr;
  @override
  @JsonKey(name: 'first_deaths_per_round')
  String get fdpr;
  @override
  @JsonKey(name: 'headshot_percentage')
  String get hs;
  @override
  @JsonKey(name: 'clutch_success_percentage')
  String get csp;
  @override
  @JsonKey(ignore: true)
  _$$StatsDtoImplCopyWith<_$StatsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
