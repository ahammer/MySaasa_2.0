import 'package:flutter_web/material.dart';
import 'package:mysaasa_core/module_manager/module.dart';

abstract class FlutterModule<T> extends Module<T> {
  IconData getIconData();
  Widget getBody();
}