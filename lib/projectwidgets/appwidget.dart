import 'package:flutter/material.dart';

class AppWidget {
  static dynamic singleAppBar(BuildContext context) {
    return AppBar(
      title: Image.asset(
        "assets/images/logo.png",
        height: 40,
      ),
    );
  }

  static dynamic inputFieldTextDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: Colors.white54,
      ),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)),
    );
  }

  static dynamic simpleTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 17,
    );
  }
  static dynamic mediumTextStyle() {
  return const TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
}
  // static SearchBarforSearchPage(BuildContext context){
  //   return conta
  // }
}
