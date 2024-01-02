// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KetoModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class KetoModelAdapter extends TypeAdapter<KetoModel> {
  @override
  final int typeId = 0;

  @override
  KetoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return KetoModel(
      productName: fields[0] as String?,
      productImage: fields[1] as String?,
      ingredientData: fields[2] as String?,
      noteData: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, KetoModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.productName)
      ..writeByte(1)
      ..write(obj.productImage)
      ..writeByte(2)
      ..write(obj.ingredientData)
      ..writeByte(3)
      ..write(obj.noteData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is KetoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
