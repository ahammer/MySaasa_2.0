
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import '../mysaasa_flutter_module.dart';

class HomeScreenModule extends FlutterModule {

  @override
  String getTitle() => "Home";

  @override
  Widget getBody() => Container(color: Colors.blue);

  @override
  IconData getIconData() => Icons.home;
}