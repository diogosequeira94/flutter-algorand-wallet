import 'package:algorand_dart/algorand_dart.dart';

abstract class IAccountRepository {
  Future<void> createAccount();
  Future<Account> loadAccount();
  Future<Account> importAccount();
}
