import 'dart:math';

import 'package:flutter/material.dart';

class ParticlesWidget extends StatefulWidget {
  final ParticleManager particleManager;

  const ParticlesWidget({Key key, this.particleManager}) : super(key: key);

  @override
  _ParticlesWidgetState createState() => _ParticlesWidgetState();
}

class _ParticlesWidgetState extends State<ParticlesWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (_, child) => CustomPaint(
            painter: ParticlesPainter(widget.particleManager),
            size: Size.infinite));
  }

  @override
  void initState() {
    controller =
        AnimationController(duration: const Duration(days: 1000), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class ParticlesPainter extends CustomPainter {
  final ParticleManager manager;

  ParticlesPainter(this.manager);

  @override
  void paint(Canvas canvas, Size size) {
    manager.draw(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class ParticleManager {
  List<Particle> particles = List();
  void addParticle(Particle p) {
    particles.add(p);
  }

  void draw(Canvas c, Size s) {
    particles.removeWhere((it) => it.isDead());
    particles.forEach((it) => it.draw(c, s));
  }
}

abstract class Particle {
  bool isDead();
  void draw(Canvas canvas, Size size);
}

Random random = Random();

class SimpleParticle extends Particle {
  Paint paint = Paint();
  final max_age_ms = random.nextInt(2000)+1000;
  final x = random.nextDouble();
  final y = random.nextDouble();
  final size = random.nextDouble() / 4;
  final baseColor = Color.fromARGB(255, random.nextInt(255),random.nextInt(255),random.nextInt(255));
  
  final DateTime start = DateTime.now();

  @override
  draw(Canvas canvas, Size s) {      
    final a = age();  
    paint.color = Color.fromARGB((255 * (1-a)).toInt(), baseColor.red, baseColor.green, baseColor.blue);
    canvas.drawCircle(Offset(x*s.width, y*s.width), size*s.width*a, paint);
  }

  double age() {
    return (DateTime.now().millisecondsSinceEpoch - start.millisecondsSinceEpoch) / max_age_ms.toDouble();
  }


  @override
  bool isDead() => age() > 1;
}
