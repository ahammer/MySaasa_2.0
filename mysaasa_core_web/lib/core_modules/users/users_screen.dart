import 'package:flutter_web/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mysaasa_core/redux/mysaasa_store.dart';
import 'package:mysaasa_core/redux/user_store/user_actions.dart';
import 'package:mysaasa_core/redux/user_store/user_store.dart';
import 'package:mysaasa_core_web/particles/particles.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';

class UsersScreen extends StatelessWidget {
  final _particleManager = ParticleManager();

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).backgroundColor,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Card(
                      child: Container(
                          child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserListWidget(),
                  ))),
                )
              ],
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      showDialog(context: context, builder: (context)=>Dialog(child: AddUserWidget(onComplete: (){ 
                        Navigator.of(context).pop();
                      }),));
                    },
                  ),
                ))
          ],
        ),
      );
}

class UserListViewModel {
  final List<User> users;
  UserListViewModel(this.users);
}

class UserListWidget extends StatelessWidget {
  const UserListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: StoreConnector<MySaasa, UserListViewModel>(
              converter: (store) => UserListViewModel(
                  (store.state.moduleStates[UserStore] as UserStore).users),
              builder: (ctx, vm) => ListView.builder(
                    itemBuilder: (BuildContext context, int index) => Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Username: ${vm.users[index].username} ",
                            style: Theme.of(context).textTheme.display1,
                          ),
                        )),
                    itemCount: vm.users.length,
                  ),
            )));
  }
}

class AddUserWidget extends StatelessWidget {
  final VoidCallback onComplete;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  AddUserWidget({
    Key key, @required this.onComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 600,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[      
            Flexible(flex:1, child:InlineField(title: "Username", controller: username)),
            Flexible(flex:1, child:InlineField(title: "Password", controller: password)),
            FlatButton(
                onPressed: () {
                  Provider.of<Store<MySaasa>>(context).dispatch(AddUserAction(username.text, password.text));
                  onComplete();
                },
                child: Text("Create User")),
          ],
        ),
      );
}

class InlineField extends StatelessWidget {
  final String title;
  final String text;
  final TextEditingController controller;
  final bool obscureText;

  const InlineField(
      {Key key,
      this.title,
      this.text,
      this.controller,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(          
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: title,
            ),
          )),
    );
  }
}
