import 'package:chatapp_practice/helper/helper.dart';
import 'package:chatapp_practice/pages/signup_page.dart';
import 'package:chatapp_practice/projectwidgets/appwidget.dart';
import 'package:chatapp_practice/services/auth.dart';
import 'package:chatapp_practice/pages/search.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  State<ChatRoom> createState() => ChatRoomState();
}

class ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const Authenticate())));
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Icon(Icons.exit_to_app)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.search),
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Search_Page())));
        },
      ),
    );
  }
}
