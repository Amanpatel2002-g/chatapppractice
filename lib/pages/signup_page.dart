// ignore_for_file: unused_import

import 'package:chatapp_practice/Services/auth.dart';
import 'package:chatapp_practice/pages/chatroomscreen.dart';
import 'package:chatapp_practice/projectwidgets/appwidget.dart';
import 'package:chatapp_practice/services/Database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  final Function toggle;
  SignUp(this.toggle);
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  // ignore: non_constant_identifier_names
  SignMeUp() {
    if (formkey.currentState!.validate()) {
      Map<String, String> userInfo = {
        "name": usernameTextEditingController.text,
        "email": emailTextEditingController.text
      };
      DataBaseMethods.uploadUserInfo(userInfo);
      AuthMethods.signUpWithEmailandPassword(emailTextEditingController.text,
              passwordTextEditingController.text)
          .then((value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const ChatRoom()));
      });
    }
  }

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
              children: [
                Form(
                    key: formkey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: ((value) {
                            return value!.isEmpty || value.length <= 2
                                ? "Please provide username greater than length 2"
                                : null;
                          }),
                          controller: usernameTextEditingController,
                          style: AppWidget.simpleTextStyle(),
                          decoration:
                              AppWidget.inputFieldTextDecoration("username"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: ((value) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value!)
                                ? null
                                : "Please enter the valid email";
                          }),
                          controller: emailTextEditingController,
                          style: AppWidget.simpleTextStyle(),
                          decoration:
                              AppWidget.inputFieldTextDecoration("email"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: ((value) {}),
                          controller: passwordTextEditingController,
                          style: AppWidget.simpleTextStyle(),
                          decoration:
                              AppWidget.inputFieldTextDecoration("password"),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    SignMeUp();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xff007EE4),
                          Color(0xff007EE4),
                        ]),
                        borderRadius: BorderRadius.circular(30)),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: const Text("Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
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
                      "Already have a account?",
                      style: AppWidget.simpleTextStyle(),
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.toggle();
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
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
