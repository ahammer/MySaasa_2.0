import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mysaasa_core/core_modules/home_screen_module.dart';
import 'package:mysaasa_core/core_modules/user_module.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';


import 'admin_screen.dart';
import 'mysaasa_provider.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(ModuleManager(
      plugins: [UserModule(), HomeScreenModule()],
      child: MySaasaProvider(child: AdminScreen())));
}
