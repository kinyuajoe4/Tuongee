import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TuongeeFirebaseUser {
  TuongeeFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TuongeeFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TuongeeFirebaseUser> tuongeeFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TuongeeFirebaseUser>(
      (user) {
        currentUser = TuongeeFirebaseUser(user);
        return currentUser!;
      },
    );
