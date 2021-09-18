import 'package:flutter/material.dart';

class AnimatedAlgoLogo extends StatefulWidget {
  const AnimatedAlgoLogo({Key? key}) : super(key: key);

  @override
  _AnimatedAlgoLogoState createState() => _AnimatedAlgoLogoState();
}

class _AnimatedAlgoLogoState extends State<AnimatedAlgoLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationEntryLogo;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _animationEntryLogo = Tween(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 2.0, curve: Curves.fastOutSlowIn),
      ),
    );

    if (_controller.isCompleted) {
      _controller.reverse();
    } else {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationEntryLogo,
      builder: (context, child) {
        return Image.asset(
          'assets/algorand_logo.png',
          width: 200.0,
          height: 200.0,
        );
      },
    );
  }
}
