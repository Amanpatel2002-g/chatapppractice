import 'package:chatapp_practice/projectwidgets/appwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn(this.toggle);
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppWidget.singleAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - 50,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  style: AppWidget.simpleTextStyle(),
                  decoration: AppWidget.inputFieldTextDecoration("email"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: AppWidget.simpleTextStyle(),
                  decoration: AppWidget.inputFieldTextDecoration("password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xff007EE4),
                        Color(0xff007EE4),
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Text("Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 254, 254),
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const Text("Sign In with  Google",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have a account?",
                      style: AppWidget.simpleTextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.toggle();
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "Register now",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
