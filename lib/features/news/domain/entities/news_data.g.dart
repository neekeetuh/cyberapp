// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewsDataAdapter extends TypeAdapter<NewsData> {
  @override
  final int typeId = 5;

  @override
  NewsData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewsData(
      id: fields[0] as String,
      title: fields[1] as String,
      description: fields[2] as String,
      date: fields[3] as DateTime,
      author: fields[4] as String,
      urlPath: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NewsData obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.author)
      ..writeByte(5)
      ..write(obj.urlPath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewsDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
