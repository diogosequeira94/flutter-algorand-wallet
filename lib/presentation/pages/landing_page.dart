import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Algorand Wallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _LandingPageHeader(),
              _WalletActionOptionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LandingPageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Wallets',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'Create or import a wallet to start sending and receiving digital currency',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class _WalletActionOptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardHeight = 150.0;
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              print('Create tapped');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: double.infinity,
                height: cardHeight,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Create a new Wallet',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          GestureDetector(
            onTap: () {
              print('Import tapped');
            },
            child: Card(
              color: Colors.greenAccent,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: double.infinity,
                height: cardHeight,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Import an existing one',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
