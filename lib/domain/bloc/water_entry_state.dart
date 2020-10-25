part of 'water_entry_bloc.dart';

abstract class WaterEntryState extends Equatable {
  const WaterEntryState();

  @override
  List<Object> get props => [];
}

class WaterEntryInitial extends WaterEntryState {}

class WaterEntryLoading extends WaterEntryState {}

class WaterEntryLoadSuccess extends WaterEntryState {
  final List<WaterEntry> waterEntries;

  const WaterEntryLoadSuccess({@required this.waterEntries});

  @override
  List<Object> get props => [waterEntries];

  @override
  String toString() => 'WaterEntryLoadSuccess {waterEntries: $waterEntries}';
}

class WaterEntryLoadFailed extends WaterEntryState {}
