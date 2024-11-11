import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Twin paradox",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ),
        body: SafeArea(child: _textWidget()));
  }

//text widget
  Widget _textWidget() {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: Text(
        "Sazzad",
        style: TextStyle(
          color: Colors.white,
          fontSize: 65,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

//image widget
  Widget _twin_paradoxImage() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/twin paradox.jpg'),
        ),
      ),
    );
  }
}
