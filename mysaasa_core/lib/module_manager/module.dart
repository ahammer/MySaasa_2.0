///
/// Defines a module and it's entry points into the app
/// 
abstract class Module<T> {
  /// The title of the module
  String getTitle();  
  T getInitialState();
}