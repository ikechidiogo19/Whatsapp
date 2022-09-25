import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/views/widget/usercard.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kprimarycolor,
        child: const Icon(Icons.chat_rounded),
        onPressed: () {},
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return UserCard(
              user: myuser[index],
            );
          },
          separatorBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 55),
              child: Divider(),
            );
          },
          itemCount: myuser.length),
    );
  }
}
