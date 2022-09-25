import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/models/status.dart';

class Ownerstatus extends StatelessWidget {
  const Ownerstatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {},
            leading: Stack(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("Asset/Me.jpg"),
                  radius: 30,
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                        radius: 10,
                        backgroundColor: kprimarycolor,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
              ],
            ),
            title: Text(
              "MY STATUS",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: textcolor, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "tap to add status update",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "RECENTS",
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
