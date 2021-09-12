part of 'algorand_bloc.dart';

abstract class AlgorandState extends Equatable {
  const AlgorandState();
}

class AlgorandInitial extends AlgorandState {
  @override
  List<Object> get props => [];
}
