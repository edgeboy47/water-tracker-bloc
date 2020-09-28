import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:water_tracker/data/data_sources/hive_database.dart';
import 'package:water_tracker/data/models/water_entry.dart';
import '../../fixtures/fixtures.dart' as fixtures;

class MockBox<E> extends Mock implements Box<E> {}

void main() {
  MockBox<WaterEntry> mockBox;
  HiveDatabase testHiveDatabase;
  List<String> testKeys = fixtures.testKeys;

  setUp(() {
    mockBox = MockBox();
    testHiveDatabase = HiveDatabase(waterEntriesBox: mockBox);
  });

  group('HiveDatabase helper functions', () {
    group('getAllKeysForDate', () {
      test('should return all keys for given date', () {
        when(mockBox.keys).thenReturn(testKeys);

        var keys =
            testHiveDatabase.getAllKeysForDate(DateTime.parse(fixtures.testDate));

        expect(keys.length, equals(12));
      });

      test('should return zero if list is empty', () {});

      test('should throw exception if list is null', () {});

      test('should catch exception and return zero', () {});

    });
  });
}
