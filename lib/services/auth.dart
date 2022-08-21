import 'package:chatapp_practice/models/U.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthMethods {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static U _userBaseFromFire(User u) {
    return U(userId: u.uid);
  }

  static Future signInWithEmail(String Email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: Email, password: password);
      User? firebaseuser = result.user;
      return _userBaseFromFire(firebaseuser!);
    } catch (e) {
      print(e.toString());
    }
  }

 static  Future resetPassword(String Email, String password) async {
    try {
      return await _auth.sendPasswordResetEmail(email: Email);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future signUpWithEmailandPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? firebaseuser = result.user;
      return _userBaseFromFire(firebaseuser!);
    } catch (e) {
      print(e.toString());
    }
  }

  static Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
