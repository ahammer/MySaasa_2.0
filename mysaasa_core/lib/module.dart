
import 'package:flutter/material.dart';

///
/// Defines a module and it's entry points into the app
/// 
abstract class Module {
  /// The title of the module
  String getTitle();  

  /// The route of the module (e.g. /login)
  String route();

  /// The side-nav when the module is active
  Widget getSideNavWidget();  

  /// The main body of this widget
  Widget getBodyWidget();  
}