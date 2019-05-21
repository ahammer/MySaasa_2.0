import 'package:flutter_web/material.dart';
import 'package:flutter_web/widgets.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:mysaasa_core_web/mysaasa_flutter_module.dart';
import 'package:provider/provider.dart';

import 'core_modules/home/home_screen.dart';

class AdminScreen extends StatefulWidget {
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final state = AdminScreenState();

  @override
  Widget build(BuildContext context) {
    return Consumer<ModuleManager>(
        builder: (ctx, moduleManager, _) =>
            ChangeNotifierProvider<AdminScreenState>.value(
                notifier: state,
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
                        body: Consumer<AdminScreenState>(builder: (ctx, state, _) =>
                                state?.selectedModule?.getBody() ??
                                HomeScreen())))));
  }
}

class AdminScreenState with ChangeNotifier {
  FlutterModule selectedModule;

  AdminScreenState() {}

  setModule(FlutterModule it) {
    selectedModule = it;
    notifyListeners();
  }
}
