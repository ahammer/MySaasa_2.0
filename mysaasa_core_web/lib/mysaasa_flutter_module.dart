import 'package:flutter_web/material.dart';
import 'package:mysaasa_core/module_manager/module.dart';

abstract class FlutterModule extends Module {
  IconData getIconData();
  Widget getBody();
}