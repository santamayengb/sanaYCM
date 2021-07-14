import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SanaYCMFirebaseUser {
  SanaYCMFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

SanaYCMFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SanaYCMFirebaseUser> sanaYCMFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SanaYCMFirebaseUser>(
        (user) => currentUser = SanaYCMFirebaseUser(user));
