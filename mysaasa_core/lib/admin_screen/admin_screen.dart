import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:provider/provider.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final modules = Provider.of<ModuleManager>(context).plugins;
    Map<String, WidgetBuilder> routes = Map();

    modules.forEach((it) => routes[it.getRoute()] = (ctx) => Scaffold(
        body: it.getBody(),
        appBar: AppBar(
          title: Text(Strings.title),
          actions: <Widget>[...modules.map((it)=>Icon(it.getIcon())), Container(width: 100,)],
        )));

    return Consumer<ModuleManager>(
        builder: (context, moduleManager, child) => MaterialApp(
              theme: ThemeData.light(),
              title: Strings.title,
              initialRoute: "/",
              routes: routes,
            ));
  }
}
