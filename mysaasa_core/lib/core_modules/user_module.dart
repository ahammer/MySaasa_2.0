import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mysaasa_core/module.dart';

class UserModule extends Module {
  @override
  Widget getBody() => Text("Body");

  @override
  Widget getSideNavWidget() => Text("Side Nav");

  @override
  String getTitle() => "User Module";

  @override
  String getRoute() => "/User";

  @override
  IconData getIcon() => Icons.supervised_user_circle;
  


}