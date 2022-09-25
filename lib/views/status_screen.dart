import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/models/status.dart';
import 'package:whatsapp/views/story_page.dart';

import 'widget/owner_status.dart';

class Statusscreen extends StatelessWidget {
  const Statusscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Ownerstatus(),
          ),
          Expanded(
            flex: 3,
            child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text(storyusers[index].date),
                    title: Text(storyusers[index].name,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: textcolor, fontWeight: FontWeight.w600)),
                    leading: Image(
                      image: AssetImage(storyusers[index].img),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const StoryPage();
                      }));
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
                itemCount: storyusers.length),
          ),
        ],
      ),
    );
  }
}
