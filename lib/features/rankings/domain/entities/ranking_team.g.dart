// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_team.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RankingTeamAdapter extends TypeAdapter<RankingTeam> {
  @override
  final int typeId = 6;

  @override
  RankingTeam read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RankingTeam(
      id: fields[0] as String,
      rank: fields[1] as int,
      teamName: fields[2] as String,
      country: fields[3] as String,
      record: fields[4] as String,
      earnings: fields[5] as String,
      logo: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RankingTeam obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.rank)
      ..writeByte(2)
      ..write(obj.teamName)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.record)
      ..writeByte(5)
      ..write(obj.earnings)
      ..writeByte(6)
      ..write(obj.logo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RankingTeamAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
