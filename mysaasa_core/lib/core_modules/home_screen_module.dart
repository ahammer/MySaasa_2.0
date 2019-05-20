import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/icon_data.dart';

import '../module.dart';

class HomeScreenModule extends Module {
  @override
  Widget getBody() => Container(color:Colors.green);

  @override
  IconData getIcon() => Icons.home;
  @override
  Widget getSideNavWidget() => Container(color:Colors.blue);

  @override
  String getTitle() => "Home";

  @override
  String getRoute()  => "/";

}