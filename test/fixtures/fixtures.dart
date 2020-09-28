import 'package:water_tracker/data/models/water_entry.dart';

List<String> testKeys = [
  '20200126 11:23:24',
  '20200209 09:27:36',
  '20200209 02:28:57',
  '20200318 02:25:31',
  '20200329 08:48:51',
  '20200412 01:05:31',
  '20200527 05:02:56',
  '20200628 02:19:22',
  '20200711 09:25:27',
  '20200822 12:45:33',
  '20200209 02:39:33',
  '20200209 03:31:23',
  '20200209 03:39:47',
  '20200209 05:49:27',
  '20200209 12:44:15',
  '20200209 03:55:19',
  '20200209 04:07:14',
  '20200209 05:03:02',
  '20200209 08:32:37',
  '20200209 11:17:11',
];

List<String> testKeysSubset = [
  '20200209 09:27:36',
  '20200209 02:28:57',
  '20200209 02:39:33',
  '20200209 03:31:23',
  '20200209 03:39:47',
  '20200209 05:49:27',
  '20200209 12:44:15',
  '20200209 03:55:19',
  '20200209 04:07:14',
  '20200209 05:03:02',
  '20200209 08:32:37',
  '20200209 11:17:11',
];

String testDate = '20200209 09:27:36';

Map<String, double> testValues = {
  '20200126 11:23:24': 21,
  '20200209 09:27:36': 33,
  '20200209 02:28:57': 17,
  '20200318 02:25:31': 28,
  '20200329 08:48:51': 27,
  '20200412 01:05:31': 15,
  '20200527 05:02:56': 12,
  '20200628 02:19:22': 30,
  '20200711 09:25:27': 10,
  '20200822 12:45:33': 24,
  '20200209 02:39:33': 22,
  '20200209 03:31:23': 11,
  '20200209 03:39:47': 40,
  '20200209 05:49:27': 23,
  '20200209 12:44:15': 38,
  '20200209 03:55:19': 10,
  '20200209 04:07:14': 10,
  '20200209 05:03:02': 16,
  '20200209 08:32:37': 30,
  '20200209 11:17:11': 11,
};

List<WaterEntry> testValuesSubset = [
  WaterEntry(dateTime: DateTime.parse('20200209 09:27:36'), amount: 33),
  WaterEntry(dateTime: DateTime.parse('20200209 02:28:57'), amount: 17),
  WaterEntry(dateTime: DateTime.parse('20200209 02:39:33'), amount: 22),
  WaterEntry(dateTime: DateTime.parse('20200209 03:31:23'), amount: 11),
  WaterEntry(dateTime: DateTime.parse('20200209 03:39:47'), amount: 40),
  WaterEntry(dateTime: DateTime.parse('20200209 05:49:27'), amount: 23),
  WaterEntry(dateTime: DateTime.parse('20200209 12:44:15'), amount: 38),
  WaterEntry(dateTime: DateTime.parse('20200209 03:55:19'), amount: 10),
  WaterEntry(dateTime: DateTime.parse('20200209 04:07:14'), amount: 10),
  WaterEntry(dateTime: DateTime.parse('20200209 05:03:02'), amount: 16),
  WaterEntry(dateTime: DateTime.parse('20200209 08:32:37'), amount: 30),
  WaterEntry(dateTime: DateTime.parse('20200209 11:17:11'), amount: 11),
];

double sumOfTestValuesSubset = 261;
