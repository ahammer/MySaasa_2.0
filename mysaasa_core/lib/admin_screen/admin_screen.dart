import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysaasa_core/strings/strings.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: ThemeData.dark(),
      title: Strings.title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.title),
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
      ));
}
