
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import '../mysaasa_flutter_module.dart';
import '../home/home_screen.dart';

class HomeScreenModule extends FlutterModule {

  @override
  String getTitle() => "Home";

  @override
  Widget getBody() => HomeScreen();

  @override
  IconData getIconData() => Icons.home;
}