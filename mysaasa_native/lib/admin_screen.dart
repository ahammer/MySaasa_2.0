import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysaasa_core/module_manager/module.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:mysaasa_core_flutter/mysaasa_flutter_module.dart';
import 'package:provider/provider.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModuleManager>(
        builder: (ctx, moduleManager, _) =>
            ChangeNotifierProvider<AdminScreenState>.value(
                notifier: AdminScreenState(moduleManager),
                child: MaterialApp(
                    theme: ThemeData.light(),
                    title: Strings.title,
                    home: Scaffold(
                        appBar: AppBar(
                          title: Text("MySaasa"),
                          actions: <Widget>[
                            ...moduleManager.plugins
                                .whereType<FlutterModule>()
                                .map((it) => Consumer<AdminScreenState>(
                                    builder: (ctx, state, _) => IconButton(
                                          onPressed: () => state.setModule(it),
                                          icon: Icon(it.getIconData()),
                                        ))),
                            Container(width: 100)
                          ],
                        ),
                        body: Consumer<AdminScreenState>(
                            builder: (ctx, state, _) =>
                                state.selectedModule.getBody())))));
  }
}

class AdminScreenState with ChangeNotifier {
  FlutterModule selectedModule;

  AdminScreenState(ModuleManager moduleManager) {
    selectedModule = moduleManager.plugins[0];
  }

  setModule(FlutterModule it) {
    selectedModule = it;
    notifyListeners();
  }
}
