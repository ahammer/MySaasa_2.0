import 'dart:math';

class UserStore {
  final List<User> users;
  UserStore(this.users);
}

Random random = Random.secure();
class User {
  final String username;
  final String salt;
  final String hashed_password;
  User({this.username, this.salt, this.hashed_password});
}