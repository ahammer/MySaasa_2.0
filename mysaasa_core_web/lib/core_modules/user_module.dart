
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';

import '../mysaasa_flutter_module.dart';

class UserModule extends FlutterModule {

  @override
  String getTitle() => "User Module";


  @override
  Widget getBody() => Container(color: Colors.red);

  @override
  IconData getIconData() => Icons.supervisor_account;
}