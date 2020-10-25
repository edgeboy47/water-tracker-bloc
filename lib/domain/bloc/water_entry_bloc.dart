import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:water_tracker/data/models/water_entry.dart';

part 'water_entry_event.dart';
part 'water_entry_state.dart';

class WaterEntryBloc extends Bloc<WaterEntryEvent, WaterEntryState> {
  WaterEntryBloc() : super(WaterEntryInitial());

  @override
  Stream<WaterEntryState> mapEventToState(
    WaterEntryEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
