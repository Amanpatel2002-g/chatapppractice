import 'package:chatapp_practice/pages/signup_page.dart';
import 'package:chatapp_practice/pages/singin_page.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isSignIn = true;

  void togglescreen() {
    setState(() {
      isSignIn = !isSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isSignIn ? SignIn(togglescreen) : SignUp(togglescreen);
  }
}
