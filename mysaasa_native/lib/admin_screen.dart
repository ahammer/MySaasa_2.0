import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysaasa_core/module.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:provider/provider.dart';

const navigatorKey = GlobalKey;

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModuleManager>(
        builder: (ctx, moduleManager, _) => ChangeNotifierProvider<AdminScreenState>.value(
            notifier: AdminScreenState(moduleManager),
            child: MaterialApp(
                theme: ThemeData.light(),
                title: Strings.title,
                home: Scaffold(
                    appBar: AppBar(
                      title: Text("MySaasa"),
                      actions: <Widget>[
                        ...moduleManager.plugins
                            .map((it) => Consumer<AdminScreenState>(
                                builder: (ctx, state, _) => IconButton(
                                      onPressed: () => state.setModule(it),
                                      icon: Icon(Icons.device_unknown),
                                    ))),
                        Container(width: 100)
                      ],
                    ),
                    body: Consumer<AdminScreenState>(
                        builder: (ctx, state, _) =>
                            Container(color: Colors.blue,))),
                navigatorKey: NavigatorHolder.navigatorKey)));
  }
}

class AdminScreenState with ChangeNotifier {
  Module selectedModule;

  AdminScreenState(ModuleManager moduleManager) {
    selectedModule = moduleManager.plugins[0];
  }

  setModule(Module it) {
    selectedModule = it;
    notifyListeners();
  }
}
