import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/views/call_screen.dart';
import 'package:whatsapp/views/chat_screen.dart';
import 'package:whatsapp/views/status_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "WHATSAPP",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: textcolor, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              color: textcolor,
              size: 30,
            ),
            Icon(
              Icons.more_vert,
              color: textcolor,
              size: 30,
            )
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: kprimarycolor,
            indicatorColor: kprimarycolor,
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body: const TabBarView(
            children: [ChatScreen(), Statusscreen(), Callscreen()]),
      ),
    );
  }
}
