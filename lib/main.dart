import 'package:chatapp_practice/pages/chatroomscreen.dart';
import 'package:chatapp_practice/pages/signup_page.dart';
import 'package:chatapp_practice/pages/singin_page.dart';
import 'package:chatapp_practice/projectwidgets/appwidget.dart';
import 'package:chatapp_practice/pages/search.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'Services/auth.dart';
import 'helper/helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const chatapp());
}

class chatapp extends StatelessWidget {
  const chatapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff145C9E),
        scaffoldBackgroundColor: const Color(0xff1F1F1F),
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const ChatRoom(),
      // home: const Search_Page(),
    );
  }
}
