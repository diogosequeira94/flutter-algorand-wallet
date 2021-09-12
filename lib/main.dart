import 'package:flutter/material.dart';
import 'package:flutter_algorand_wallet/presentation/pages/landing_page.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {

  // Initialize hive
  await Hive.initFlutter();

  // Hive.registerAdapter(AlgorandStandardAssetAdapter());
  // Hive.registerAdapter(AccountAdapter());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Algorand Wallet',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
