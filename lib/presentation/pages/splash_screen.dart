import 'package:flutter/material.dart';
import 'package:flutter_algorand_wallet/presentation/widgets/animated_baloon.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedBalloon(),
        ),
      ),
    );
  }
}

class _AlgoTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
