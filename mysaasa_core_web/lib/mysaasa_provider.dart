import 'package:flutter_web/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mysaasa_core/module_manager/module_manager.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:mysaasa_core/redux/mysaasa_store.dart';

class MySaasaProvider extends StatelessWidget {
  final Widget child;

  const MySaasaProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    var initialState = MySaasa((b)=>b.moduleStates = {});

    //Load the initial state for each plugin
    Provider.of<ModuleManager>(context).plugins.forEach((module){
      var state = module.getInitialState();
      initialState = initialState.rebuild((b)=>b.moduleStates[state.runtimeType] = state);
    });

    Store<MySaasa> reduxStore = Store<MySaasa>(reducer,  initialState: initialState);

    return Provider<Store<MySaasa>>.value(
        value: reduxStore,
        child: StoreProvider(store: reduxStore, child: child));
  }
}
