import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:mysaasa_core/strings/strings.dart';
import 'package:provider/provider.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<ModuleManager>(
      builder: (context, moduleManager, child) => MaterialApp(
          theme: ThemeData.light(),
          title: Strings.title,
          home: Scaffold(
            appBar: AppBar(
              title: Text(Strings.title),
              actions: <Widget>[
                ...moduleManager.plugins.map((module)=>Icon(module.getIcon()))
                ,Container(width:50)
              ],
            ),

            drawer: Container(color: Theme.of(context).accentColor, width: 200),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Hello, Flutter!',
                  ),
                ],
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          )));
}
