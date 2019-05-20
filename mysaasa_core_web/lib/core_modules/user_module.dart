
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../mysaasa_flutter_module.dart';

class UserModule extends FlutterModule {

  @override
  String getTitle() => "User Module";


  @override
  Widget getBody() => Container(color: Colors.red);

  @override
  IconData getIconData() => Icons.supervisor_account;
}