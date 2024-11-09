import 'package:flutter/material.dart';
import 'package:twin_paradox/pages/home_page.dart';

void main() {
  runApp(const MyTwinParadoxApp());
}
class MyTwinParadoxApp extends StatelessWidget {
  const MyTwinParadoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twin Paradox',
      theme:ThemeData(
scaffoldBackgroundColor:const Color.fromRGBO(31, 31, 31, 1),
      ),
      home:const HomePage(),
    );
  }
}

