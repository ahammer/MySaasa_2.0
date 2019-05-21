import 'dart:math';

import 'package:flutter_web/material.dart';

class NoiseWidget extends StatefulWidget {
  @override
  _NoiseWidgetState createState() => _NoiseWidgetState();
}

class _NoiseWidgetState extends State<NoiseWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (_, child) =>
            CustomPaint(painter: NoiseWidgetPainter(), size: Size.infinite));
  }

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(days: 1000), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

class NoiseWidgetPainter extends CustomPainter {
  final random = Random.secure();
  @override
  void paint(Canvas canvas, Size size) {
    Paint p = Paint();
    for (var i = 0; i < 10; i++) {
      p.color = Color.fromARGB(
          255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
      canvas.drawCircle(
          Offset(random.nextDouble() * size.width,
              random.nextDouble() * size.height),
          random.nextInt(100).toDouble(),
          p);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
