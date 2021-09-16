import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/algorand_logo.png',
              width: 200.0,
              height: 200.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                'Algorand ©',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
