// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discussion.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DiscussionAdapter extends TypeAdapter<Discussion> {
  @override
  final int typeId = 0;

  @override
  Discussion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Discussion(
      user: fields[0] as User,
      topic: fields[1] as String,
      description: fields[2] as String,
      date: fields[3] as DateTime,
      likesCount: fields[4] == null ? 0 : fields[4] as int,
      dislikesCount: fields[5] == null ? 0 : fields[5] as int,
    )..id = fields[6] as String;
  }

  @override
  void write(BinaryWriter writer, Discussion obj) {
    writer
      ..writeByte(7)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(0)
      ..write(obj.user)
      ..writeByte(1)
      ..write(obj.topic)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.likesCount)
      ..writeByte(5)
      ..write(obj.dislikesCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiscussionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
