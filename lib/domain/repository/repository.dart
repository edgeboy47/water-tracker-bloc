import 'package:water_tracker/data/models/water_entry.dart';

abstract class RepositoryInterface {
  Future<void> createEntry(WaterEntry entry);

  WaterEntry readEntry(DateTime dateTime);

  Future<void> updateEntry(WaterEntry entry);

  Future<void> deleteEntry(DateTime dateTime);

  List getAllEntriesForDate(DateTime dateTime);

  List getAllEntriesForCurrentDate();

  double getSumOfEntriesForDate(DateTime dateTime);

  double getSumOfEntriesForCurrentDate();
}
