import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/models/user.dart';
import 'package:whatsapp/views/widget/tick.dart';

import 'notify.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Image.asset(user.img),
      title: Text(
        user.tittle,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
      ),
      subtitle: customtick(
          sent: user.sent, user: user.subtittle, isseen: user.isseen),
      trailing: notify(user.sent),
    );
  }
}
