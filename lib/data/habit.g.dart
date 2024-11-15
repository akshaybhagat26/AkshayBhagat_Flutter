// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HabitdataAdapter extends TypeAdapter<Habitdata> {
  @override
  final int typeId = 0;

  @override
  Habitdata read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Habitdata(
      habitId: fields[0] as String,
      habitDate: fields[1] as DateTime,
      habitStat: fields[2] as String,
      habitCategory: fields[4] as String,
      habitDescription: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Habitdata obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.habitId)
      ..writeByte(1)
      ..write(obj.habitDate)
      ..writeByte(2)
      ..write(obj.habitStat)
      ..writeByte(4)
      ..write(obj.habitCategory)
      ..writeByte(5)
      ..write(obj.habitDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HabitdataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
