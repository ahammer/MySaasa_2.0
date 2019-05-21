import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core_flutter/admin_screen.dart';
import 'package:mysaasa_core_flutter/core_modules/home_screen_module.dart';
import 'package:mysaasa_core_flutter/core_modules/user_module.dart';
import 'package:mysaasa_core_flutter/mysaasa_provider.dart';
import 'package:provider/provider.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(Provider<ModuleManager>.value(
      value: ModuleManager([UserModule(), HomeScreenModule()]),
      child: MySaasaProvider(child: AdminScreen())));
}
