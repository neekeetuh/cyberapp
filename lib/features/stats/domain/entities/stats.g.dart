// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatsAdapter extends TypeAdapter<Stats> {
  @override
  final int typeId = 7;

  @override
  Stats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stats(
      id: fields[0] as String,
      playerName: fields[1] as String,
      teamTag: fields[2] as String,
      rating: fields[3] as String,
      acs: fields[4] as String,
      kd: fields[5] as String,
      kast: fields[6] as String,
      adpr: fields[7] as String,
      kpr: fields[8] as String,
      apr: fields[9] as String,
      fkpr: fields[10] as String,
      fdpr: fields[11] as String,
      hs: fields[12] as String,
      csp: fields[13] as String,
      timeSpan: fields[14] as String,
      regionCode: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Stats obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.playerName)
      ..writeByte(2)
      ..write(obj.teamTag)
      ..writeByte(3)
      ..write(obj.rating)
      ..writeByte(4)
      ..write(obj.acs)
      ..writeByte(5)
      ..write(obj.kd)
      ..writeByte(6)
      ..write(obj.kast)
      ..writeByte(7)
      ..write(obj.adpr)
      ..writeByte(8)
      ..write(obj.kpr)
      ..writeByte(9)
      ..write(obj.apr)
      ..writeByte(10)
      ..write(obj.fkpr)
      ..writeByte(11)
      ..write(obj.fdpr)
      ..writeByte(12)
      ..write(obj.hs)
      ..writeByte(13)
      ..write(obj.csp)
      ..writeByte(14)
      ..write(obj.timeSpan)
      ..writeByte(15)
      ..write(obj.regionCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
