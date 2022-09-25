import 'package:flutter/material.dart';
import 'package:whatsapp/models/colors.dart';

Widget customtick(
    {required bool sent, required String user, required bool isseen}) {
  if (sent == true) {
    return Row(
      children: [
        Icon(
          Icons.done_all,
          color: isseen ? lightcolor : Colors.grey,
        ),
        Text(
          user,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  } else {
    return Row(
      children: [
        Text(user, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
