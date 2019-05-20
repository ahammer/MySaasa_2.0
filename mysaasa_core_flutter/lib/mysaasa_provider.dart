import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';
import 'package:mysaasa_core/redux/mysaasa_store.dart';

class MySaasaProvider extends StatelessWidget {
  final Widget child;

  const MySaasaProvider({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Store<MySaasa> reduxStore = Store<MySaasa>(reducer,
        initialState: MySaasa((b) => b.moduleStates = {}));

    return Provider<Store<MySaasa>>.value(
        value: reduxStore,
        child: StoreProvider(store: reduxStore, child: child));
  }
}
