import 'package:flutter/material.dart';

import 'views/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Demo',
      theme: ThemeData(
        textTheme: const TextTheme(),
      ),
      home: const Firstpage(),
    );
  }
}
