// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_match.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UpcomingMatchAdapter extends TypeAdapter<UpcomingMatch> {
  @override
  final int typeId = 4;

  @override
  UpcomingMatch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UpcomingMatch(
      id: fields[0] as String,
      teamOne: fields[1] as String,
      teamTwo: fields[2] as String,
      timeUntilMatch: fields[3] as String,
      matchSeries: fields[4] as String,
      matchEvent: fields[5] as String,
      unixTimestamp: fields[6] as String,
      matchPage: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UpcomingMatch obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.teamOne)
      ..writeByte(2)
      ..write(obj.teamTwo)
      ..writeByte(3)
      ..write(obj.timeUntilMatch)
      ..writeByte(4)
      ..write(obj.matchSeries)
      ..writeByte(5)
      ..write(obj.matchEvent)
      ..writeByte(6)
      ..write(obj.unixTimestamp)
      ..writeByte(7)
      ..write(obj.matchPage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpcomingMatchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
