import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:water_tracker/data/data_sources/hive_database.dart';
import 'package:water_tracker/data/models/water_entry.dart';
import 'package:water_tracker/data/repository/repository.dart';
import '../../fixtures/fixtures.dart' as fixtures;

class MockHiveDatabase extends Mock implements HiveDatabase {}

String formatDate(DateTime dt) {
  String addLZero(int i) => i >= 10 ? '$i' : '0$i';

  String formatted =
      '${dt.year}${addLZero(dt.month)}${addLZero(dt.day)} ${addLZero(dt.hour)}:${addLZero(dt.minute)}:${addLZero(dt.second)}';

  return formatted;
}

void main() {
  MockHiveDatabase mockDB;
  Repository testRepo;
  DateTime testDate;
  List<String> testKeysSubset;
  List<WaterEntry> testValuesSubset;
  double sumOfTestValuesSubset;

  setUp(() {
    mockDB = MockHiveDatabase();
    testRepo = Repository(hiveDatabase: mockDB);
    testDate = DateTime.parse(fixtures.testDate);
    testKeysSubset = fixtures.testKeysSubset;
    testValuesSubset = fixtures.testValuesSubset;
    sumOfTestValuesSubset = fixtures.sumOfTestValuesSubset;
  });

  group('Repository functions', () {
    group('getAllEntriesForDate', () {
      test('should get all entries for given date', () {
        // mock getting the keys from the database
        when(mockDB.getAllKeysForDate(any)).thenReturn(testKeysSubset);

        // mock getting an entry from the database, using the key
        when(mockDB.readEntry(any)).thenAnswer((realInvocation) {
          DateTime arg = realInvocation.positionalArguments[0];
          String formattedDate = formatDate(arg);
          return WaterEntry(
              dateTime: arg, amount: fixtures.testValues[formattedDate]);
        });

        List<WaterEntry> entries = testRepo.getAllEntriesForDate(testDate);

        expect(entries, equals(testValuesSubset));
      });

      test('should get no entries if no entry with date is found', () {});
      test('should get if ', () {});
    });
    group('getSumOfEntriesForDate', () {
      test('should get correct sum for all entries', () {
        // mock getting the keys from the database
        when(mockDB.getAllKeysForDate(any)).thenReturn(testKeysSubset);

        // mock getting an entry from the database, using the key
        when(mockDB.readEntry(any)).thenAnswer((realInvocation) {
          DateTime arg = realInvocation.positionalArguments[0];
          String formattedDate = formatDate(arg);
          return WaterEntry(
              dateTime: arg, amount: fixtures.testValues[formattedDate]);
        });

        double sum = testRepo.getSumOfEntriesForDate(testDate);

        expect(sum, sumOfTestValuesSubset);
      });
      test('', () {});
      test('', () {});
    });
  });
}