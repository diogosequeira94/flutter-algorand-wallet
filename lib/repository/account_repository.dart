import 'dart:typed_data';

import 'package:algorand_dart/algorand_dart.dart';
import 'package:flutter_algorand_wallet/database/entities/account_entity.dart';
import 'package:flutter_algorand_wallet/repository/i_account_repository.dart';
import 'package:hive/hive.dart';

class AccountRepository implements IAccountRepository {
  final Box<AccountEntity> accountBox;

  AccountRepository() : accountBox = Hive.box<AccountEntity>('accounts');

  /// Init the account repo and load the wallets
  Future<void> init() async {
    final account = await accountBox.get(0)?.unwrap();
    if (account == null) return;
  }

  /// Create a new account.
  ///
  /// Throws [AlgorandException] if unable to create the account
  ///

  final algorand = Algorand(
    algodClient: AlgodClient(
      apiUrl: AlgoExplorer.TESTNET_ALGOD_API_URL,
      apiKey: '',
    ),
    indexerClient: IndexerClient(
      apiUrl: AlgoExplorer.TESTNET_INDEXER_API_URL,
      apiKey: '',
    ),
  );

  @override
  Future<Account> createAccount() async {
    try {
      final account = await algorand.createAccount();

      // Store the account in our local DB.
      // NOTE! Storing your private key like this is insecure!
      // Make sure to encrypt

      final privateKey = await account.keyPair.extractPrivateKeyBytes();
      final entity =
          AccountEntity.account(account, Uint8List.fromList(privateKey));

      await accountBox.put(0, entity);

      return account;
    } on AlgorandException catch (error) {
      throw error;
    }
  }

  @override
  Future<Account> importAccount() {
    // TODO: implement importAccount
    throw UnimplementedError();
  }

  @override
  Future<Account> loadAccount() {
    // TODO: implement loadAccount
    throw UnimplementedError();
  }
}
