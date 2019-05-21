
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../mysaasa_flutter_module.dart';
import 'users/users_screen.dart';

class UserModule extends FlutterModule {

  @override
  String getTitle() => "User Module";


  @override
  Widget getBody() => UsersScreen();

  @override
  IconData getIconData() => Icons.supervisor_account;
}