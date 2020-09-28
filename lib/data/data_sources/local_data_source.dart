import '../models/water_entry.dart';

abstract class LocalDataSource {
  Future<void> createEntry(WaterEntry entry);

  WaterEntry readEntry(DateTime dateTime);

  Future<void> updateEntry(WaterEntry entry);

  Future<void> deleteEntry(DateTime dateTime);
}