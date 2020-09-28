import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:equatable/equatable.dart';
part 'water_entry.g.dart';

@HiveType(typeId: 0)
class WaterEntry extends Equatable {
  @HiveField(0)
  final double amount;

  @HiveField(1)
  final DateTime dateTime;

  const WaterEntry({@required this.amount, @required this.dateTime})
      : assert(amount > 0 && dateTime != null);

  @override
  List<Object> get props => [amount, dateTime];  
}