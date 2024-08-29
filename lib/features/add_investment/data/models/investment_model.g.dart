// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvestmentModelAdapter extends TypeAdapter<InvestmentModel> {
  @override
  final int typeId = 0;

  @override
  InvestmentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvestmentModel(
      investmentCategory: fields[0] as String,
      investmentName: fields[1] as String,
      investmentDate: fields[2] as String,
      investmentAmount: fields[3] as String,
      description: fields[4] as String?,
      interest: fields[5] as String?,
      riskRating: fields[6] as String?,
      expectedReturn: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, InvestmentModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.investmentCategory)
      ..writeByte(1)
      ..write(obj.investmentName)
      ..writeByte(2)
      ..write(obj.investmentDate)
      ..writeByte(3)
      ..write(obj.investmentAmount)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.interest)
      ..writeByte(6)
      ..write(obj.riskRating)
      ..writeByte(7)
      ..write(obj.expectedReturn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvestmentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
