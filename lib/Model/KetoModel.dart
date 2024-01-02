import 'package:hive/hive.dart';
part 'KetoModel.g.dart';
@HiveType(typeId: 0)
class KetoModel extends HiveObject{
  @HiveField(0)
  String? productName;

  @HiveField(1)
  String? productImage;

  @HiveField(2)
  String? ingredientData;

  @HiveField(3)
  String? noteData;

  KetoModel({  this.productName,   this.productImage,   this.ingredientData, this.noteData});

}