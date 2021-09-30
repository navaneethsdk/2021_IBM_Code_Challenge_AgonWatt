import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Fading extends StatefulWidget {
  final Widget child;

  Fading(this.child);

  _FadingState createState() => _FadingState();
}

class _FadingState extends State<Fading> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 800), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
  }

  @override
  dispose() {
    controller.dispose(); // you need this
    super.dispose();
  }

  Widget build(BuildContext context) {
    return FadeTransition(opacity: animation, child: widget.child);
  }
}
