import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:mysaasa_core_web/mysaasa_flutter_module.dart';
import 'package:provider/provider.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ModuleManager>(
        builder: (ctx, moduleManager, _) =>
            ListenableProvider<AdminScreenState>.value(
                listenable: AdminScreenState(moduleManager),
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

class AdminScreenState implements Listenable {
  FlutterModule selectedModule;

  List<VoidCallback> listeners = List();

  AdminScreenState(ModuleManager moduleManager) {
    selectedModule = moduleManager.plugins[0];
  }

  setModule(FlutterModule it) {
    selectedModule = it;
    listeners.forEach((it)=>it());
  }

  @override
  void addListener(listener) {
   listeners.add(listener);
  }

  @override
  void removeListener(listener) {
    listeners.remove(listener);
  }
}
