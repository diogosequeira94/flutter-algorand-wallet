import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'algorand_event.dart';
part 'algorand_state.dart';

class AlgorandBloc extends Bloc<AlgorandEvent, AlgorandState> {
  AlgorandBloc() : super(AlgorandInitial());

  @override
  Stream<AlgorandState> mapEventToState(
    AlgorandEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
