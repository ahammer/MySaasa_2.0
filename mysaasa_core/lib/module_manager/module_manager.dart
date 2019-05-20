import 'package:flutter/material.dart';
import 'package:mysaasa_core/module.dart';
import 'package:provider/provider.dart';

//Provides access to the loaded modules
class ModuleManager extends StatelessWidget {
  final List<Module> plugins;
  final Widget child;  

  const ModuleManager({Key key, this.plugins, this.child}) : super(key: key);  

  @override
  Widget build(BuildContext context) => Provider<ModuleManager>.value(value:this, child: child);
}

