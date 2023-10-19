import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StylistShopsFirebaseUser {
  StylistShopsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

StylistShopsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StylistShopsFirebaseUser> stylistShopsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
        .map<StylistShopsFirebaseUser>(
            (user) => currentUser = StylistShopsFirebaseUser(user));
