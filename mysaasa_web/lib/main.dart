import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(Container(color: Colors.green));
}
