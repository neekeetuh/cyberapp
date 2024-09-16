// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LiveMatchAdapter extends TypeAdapter<LiveMatch> {
  @override
  final int typeId = 2;

  @override
  LiveMatch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LiveMatch(
      id: fields[0] as String,
      teamOne: fields[1] as String,
      teamTwo: fields[2] as String,
      scoreOne: fields[3] as String,
      scoreTwo: fields[4] as String,
      teamOneRoundsCT: fields[5] as String,
      teamOneRoundsT: fields[6] as String,
      teamTwoRoundsCT: fields[7] as String,
      teamTwoRoundsT: fields[8] as String,
      mapNumber: fields[9] as String,
      currentMap: fields[10] as String,
      timeUntilMatch: fields[11] as String,
      matchEvent: fields[12] as String,
      matchSeries: fields[13] as String,
      unixTimestamp: fields[14] as String,
      matchPage: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, LiveMatch obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.teamOne)
      ..writeByte(2)
      ..write(obj.teamTwo)
      ..writeByte(3)
      ..write(obj.scoreOne)
      ..writeByte(4)
      ..write(obj.scoreTwo)
      ..writeByte(5)
      ..write(obj.teamOneRoundsCT)
      ..writeByte(6)
      ..write(obj.teamOneRoundsT)
      ..writeByte(7)
      ..write(obj.teamTwoRoundsCT)
      ..writeByte(8)
      ..write(obj.teamTwoRoundsT)
      ..writeByte(9)
      ..write(obj.mapNumber)
      ..writeByte(10)
      ..write(obj.currentMap)
      ..writeByte(11)
      ..write(obj.timeUntilMatch)
      ..writeByte(12)
      ..write(obj.matchEvent)
      ..writeByte(13)
      ..write(obj.matchSeries)
      ..writeByte(14)
      ..write(obj.unixTimestamp)
      ..writeByte(15)
      ..write(obj.matchPage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LiveMatchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
