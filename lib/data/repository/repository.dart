import 'package:flutter/foundation.dart';
import 'package:water_tracker/data/data_sources/hive_database.dart';
import 'package:water_tracker/data/models/water_entry.dart';
import 'package:water_tracker/domain/repository/repository.dart';

class Repository extends RepositoryInterface {
  HiveDatabase hiveDatabase;

  Repository({@required this.hiveDatabase}) : assert(hiveDatabase != null);

  @override
  Future<void> createEntry(WaterEntry entry) async {
    await hiveDatabase.createEntry(entry);
  }

  @override
  Future<void> deleteEntry(DateTime dateTime) async {
    await hiveDatabase.deleteEntry(dateTime);
  }

  @override
  WaterEntry readEntry(DateTime dateTime) {
    return hiveDatabase.readEntry(dateTime);
  }

  @override
  Future<void> updateEntry(WaterEntry entry) async {
    await hiveDatabase.updateEntry(entry);
  }

  @override
  List<WaterEntry> getAllEntriesForDate(DateTime dateTime) {
    final keysForDate = hiveDatabase.getAllKeysForDate(dateTime);

    return List.generate(keysForDate.length,
        (index) => readEntry(DateTime.parse(keysForDate[index])));
  }

  @override
  List<WaterEntry> getAllEntriesForCurrentDate() {
    return getAllEntriesForDate(DateTime.now());
  }

  @override
  double getSumOfEntriesForDate(DateTime dateTime) {
    final list = getAllEntriesForDate(dateTime);
    double sum = 0.0;

    for (WaterEntry entry in list) sum += entry.amount;

    return sum;
  }

  @override
  double getSumOfEntriesForCurrentDate() {
    return getSumOfEntriesForDate(DateTime.now());
  }
}
