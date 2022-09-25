import 'package:flutter/material.dart';

Widget notify(bool sent) {
  if (sent == false) {
    return Column(
      children: [
        const Text(
          "10:43",
          style: TextStyle(color: Colors.green),
        ),
        Container(
          height: 20,
          width: 20,
          child: const Center(
            child: Text(
              "1",
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration:
              const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
        ),
      ],
    );
  } else {
    return Container(
      height: 20,
      width: 20,
      color: Colors.white,
    );
  }
}
