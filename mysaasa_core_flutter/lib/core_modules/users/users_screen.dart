import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:mysaasa_core/redux/mysaasa_store.dart';
import 'package:mysaasa_core/redux/user_store/user_actions.dart';
import 'package:mysaasa_core/redux/user_store/user_store.dart';
import 'package:mysaasa_core_flutter/particles/particles.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';

class UsersScreen extends StatelessWidget {
  final _particleManager = ParticleManager();

  @override
  Widget build(BuildContext context) => Container(
        color: Theme.of(context).backgroundColor,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Card(
                  child: Container(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  AddUserWidget(),
                  Expanded(child: UserListWidget())
                ]),
              ))),
            )
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
      child: StoreConnector<MySaasa, UserListViewModel>(converter: (store)=>UserListViewModel((store.state.moduleStates[UserStore] as UserStore).users), builder:(ctx, vm)=>ListView.builder(
        itemBuilder: (BuildContext context, int index) => Text("${vm.users[index].username}"),
        itemCount: vm.users.length,
      ),
    )));
  }
}

class AddUserWidget extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  AddUserWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text("1001 Users"),
            Expanded(child: Container()),
            InlineField(title: "Username", controller: username),
            InlineField(title: "Password", controller: password),
            FlatButton(
                onPressed: () {
                  Provider.of<Store<MySaasa>>(context)
                      .dispatch(AddUserAction(username.text, password.text));
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
          width: 200,
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
