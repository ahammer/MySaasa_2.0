import 'package:mysaasa_core/redux/user_store/user_store.dart';

import '../mysaasa_store.dart';

class AddUserAction extends Action<UserStore> {
  final String username;
  final String password;
  final String salt = "Ddsadsadsa";

  AddUserAction(this.username, this.password);

  @override
  UserStore reduce(UserStore old) {
    if (old == null) 
      throw new Exception("State can not be null");
    User newUser = User(
        username: username, hashed_password: "${(password + salt).hashCode}", salt: salt);
    final newList = List<User>();
    newList.addAll(old?.users ?? []);
    newList.add(newUser);
    return new UserStore(newList);
  }
}
