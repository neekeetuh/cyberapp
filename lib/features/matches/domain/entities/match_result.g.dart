// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_result.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MatchResultAdapter extends TypeAdapter<MatchResult> {
  @override
  final int typeId = 3;

  @override
  MatchResult read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MatchResult(
      id: fields[0] as String,
      teamOne: fields[1] as String,
      teamTwo: fields[2] as String,
      scoreOne: fields[3] as String,
      scoreTwo: fields[4] as String,
      timeCompleted: fields[5] as String,
      roundInfo: fields[6] as String,
      tournamentName: fields[7] as String,
      matchPage: fields[8] as String,
      tournamentIcon: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MatchResult obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.timeCompleted)
      ..writeByte(6)
      ..write(obj.roundInfo)
      ..writeByte(7)
      ..write(obj.tournamentName)
      ..writeByte(8)
      ..write(obj.matchPage)
      ..writeByte(9)
      ..write(obj.tournamentIcon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MatchResultAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
