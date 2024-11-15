import 'package:akshay_bhagat_flutter/data/habit.dart';
import 'package:hive/hive.dart';

class HiveRepo {
  final transDataBoxName = 'transDataBoxName';

  void registerAdapter() {
    Hive.registerAdapter(HabitdataAdapter());
  }

}
