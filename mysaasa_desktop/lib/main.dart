import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mysaasa_core/admin_screen/admin_screen.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/user_module/user_module.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(ModuleManager(plugins: [UserModule()], child:AdminScreen()));
}