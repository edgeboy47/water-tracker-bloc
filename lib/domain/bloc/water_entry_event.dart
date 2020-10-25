part of 'water_entry_bloc.dart';

abstract class WaterEntryEvent extends Equatable {
  const WaterEntryEvent();

  @override
  List<Object> get props => [];
}

class EntriesLoaded extends WaterEntryEvent {}

class EntryAdded extends WaterEntryEvent {
  final WaterEntry waterEntry;

  const EntryAdded({@required this.waterEntry});
}

class EntryDeleted extends WaterEntryEvent {
  final DateTime dateTime;

  const EntryDeleted({@required this.dateTime});
}

class EntryUpdated extends WaterEntryEvent {
  final DateTime dateTime;
  final double amount;

  const EntryUpdated({@required this.dateTime, @required this.amount});
}
