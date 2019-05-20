
import 'package:flutter/material.dart';
import 'package:mysaasa_core_flutter/mysaasa_flutter_module.dart';

class HomeScreenModule extends FlutterModule {

  @override
  String getTitle() => "Home";

  @override
  Widget getBody() => Container(color: Colors.blue);

  @override
  IconData getIconData() => Icons.home;
}