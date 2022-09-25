import 'package:flutter/material.dart';

import 'package:whatsapp/models/colors.dart';
import 'package:whatsapp/views/home_page.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Welcome to Whatsapp",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: kprimarycolor),
            ),
            Image.asset(
              "Asset/Qr page.png",
            ),
            RichText(
                text: TextSpan(style: const TextStyle(fontSize: 18), children: [
              TextSpan(text: "Read our ", style: TextStyle(color: textcolor)),
              TextSpan(
                  text: " privacy policy", style: TextStyle(color: lightcolor)),
              TextSpan(
                  text: ", Tap Agree and continue to accept the ",
                  style: TextStyle(color: textcolor)),
              TextSpan(
                  text: " Terms of service",
                  style: TextStyle(color: lightcolor)),
            ])),
            SizedBox(
              width: size.width * 0.65,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: kprimarycolor, elevation: 10),
                  child: const Text(
                    "Agree",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
