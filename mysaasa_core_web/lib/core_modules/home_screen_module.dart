
import 'package:flutter_web/material.dart';
import 'package:mysaasa_core_web/mysaasa_flutter_module.dart';

import 'home/home_screen.dart';

class HomeScreenModule extends FlutterModule {

  @override
  String getTitle() => "Home";

  @override
  Widget getBody() => HomeScreen();

  @override
  IconData getIconData() => Icons.home;

  @override
  getInitialState() => Null;
}