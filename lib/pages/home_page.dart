import 'dart:convert';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: _deviceWidth,
          height: _deviceHeight,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _textHeading(),
                  _Defination(),
                ],
              ),
              _twin_paradoxImage(),
            ],
          ),
        ),
      ),
    );
  }

//text widget
  Widget _textHeading() {
    return const Padding(
      padding: EdgeInsets.only(top: 8),
      child: Text(
        "Twin Paradox",
        style: TextStyle(
          color: Colors.white,
          fontSize: 65,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

//Defination Widget
  Widget _Defination() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'A Magical Theory of physics',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Identical_Twins',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ' Relativity & Spacetime',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 18),
            _StartJourneyButton()
          ]),
    );
  }

//StartJourneyButton Widget
  Widget _StartJourneyButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {
          print('Journey Has Began');
        },
        child: const Text(
          'Start Journey!!',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }

//image widget
  Widget _twin_paradoxImage() {
    return Container(
      height: _deviceHeight * 0.80,
      width: _deviceWidth * 100,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage('assets/images/twin paradox.jpg'),
        ),
      ),
    );
  }
}
