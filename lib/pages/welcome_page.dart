import 'package:camping/pages/home_page.dart';
import 'package:camping/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody(){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset("assets/images/welcome_image.svg"),
            Column(
              children: <Widget>[
                const Text(
                  "Find yourself\nputside",
                  style: appTitle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  "Book unique camping experiences on over 300,300 campsites cabins, RV parks, public parks and more.",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.8),
                    fontSize: 13,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              child: const SizedBox(
                width: double.infinity,
                height: 45,
                child: Center(
                  child: Text(
                    "Explore Now",
                    style: TextStyle(
                        color: textWhite
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
