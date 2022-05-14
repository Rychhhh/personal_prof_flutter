import 'package:flutter/material.dart';
import 'package:profile_wikrama/screen/landing_page.dart';
import 'package:profile_wikrama/models/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white, dividerColor: primaryColor),
      home: const Scaffold(
        body: LandingPage(),
      ),
    );
  }
}
