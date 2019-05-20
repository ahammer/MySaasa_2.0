import 'package:flutter_web/foundation.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:provider/provider.dart';
import 'package:mysaasa_core_web/core_modules/home_screen_module.dart';
import 'package:mysaasa_core_web/core_modules/user_module.dart';
import 'package:mysaasa_core_web/mysaasa_provider.dart';

import 'admin_screen.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  
  runApp(Provider<ModuleManager>.value(
      value: ModuleManager([UserModule(), HomeScreenModule()]),
      child: MySaasaProvider(child: AdminScreen())));
}
