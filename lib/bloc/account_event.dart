part of 'account_bloc.dart';

abstract class AccountEvent extends Equatable {
  const AccountEvent();
}

class CreateAccountPressed extends AccountEvent {
  const CreateAccountPressed();
  @override
  List<Object> get props => [];
}

class ImportAccountPressed extends AccountEvent {
  const ImportAccountPressed();
  @override
  List<Object> get props => [];
}
