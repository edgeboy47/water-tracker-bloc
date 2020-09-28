import 'package:flutter/foundation.dart';
import 'package:water_tracker/data/data_sources/local_data_source.dart';
import 'package:water_tracker/data/models/water_entry.dart';
import 'package:hive/hive.dart';

class HiveDatabase extends LocalDataSource {
  Box<WaterEntry> waterEntriesBox;

  HiveDatabase({@required this.waterEntriesBox})
      : assert(waterEntriesBox != null);

  @override
  Future<void> createEntry(WaterEntry entry) async {
    await waterEntriesBox.put(entry.dateTime.toString(), entry);
  }

  @override
  Future<void> deleteEntry(DateTime dateTime) async {
    await waterEntriesBox.delete(dateTime.toString());
  }

  @override
  WaterEntry readEntry(DateTime dateTime) {
    return waterEntriesBox.get(dateTime.toString());
  }

  @override
  Future<void> updateEntry(WaterEntry entry) async {
    if (waterEntriesBox.containsKey(entry.dateTime.toString()))
      await createEntry(entry);
  }

  /// Returns all the keys for a given date. 
  /// This would be used to get each entry for that date.

  List<String> getAllKeysForDate(DateTime dateTime) {
    return waterEntriesBox.keys.cast<String>().where((key) {
      DateTime keyDate = DateTime.parse(key);
      return keyDate.day == dateTime.day &&
          keyDate.month == dateTime.month &&
          keyDate.year == dateTime.year;
    }).toList();
  }
}
