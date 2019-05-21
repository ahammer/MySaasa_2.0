
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:mysaasa_core/redux/user_store/user_store.dart';

import '../mysaasa_flutter_module.dart';
import 'users/users_screen.dart';

class UserModule extends FlutterModule<UserStore> {

  @override
  String getTitle() => "User Module";


  @override
  Widget getBody() => UsersScreen();

  @override
  IconData getIconData() => Icons.supervisor_account;

  @override
  UserStore getInitialState() => UserStore([]);
}