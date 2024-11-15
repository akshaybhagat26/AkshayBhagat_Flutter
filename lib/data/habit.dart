import 'package:hive/hive.dart';

part 'habit.g.dart';

@HiveType(typeId: 0)
class Habitdata {
  @HiveField(0)
  String habitId;

  @HiveField(1)
  DateTime habitDate;

  @HiveField(2)
  String habitStat;

  @HiveField(4)
  String habitCategory;

  @HiveField(5)
  String habitDescription;

  Habitdata({
    required this.habitId,
    required this.habitDate,
    required this.habitStat,
    required this.habitCategory,
    required this.habitDescription,
  });
}

