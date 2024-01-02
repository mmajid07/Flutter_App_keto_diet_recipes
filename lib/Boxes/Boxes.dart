
import 'package:hive/hive.dart';

import '../Model/KetoModel.dart';

class Boxes{
  static Box<KetoModel> getData()=> Hive.box<KetoModel>("KetoRecipes");
}