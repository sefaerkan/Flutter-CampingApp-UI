import 'package:camping/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const WelcomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'lato',
    ),
  ));
}
