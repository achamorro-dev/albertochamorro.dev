import 'dart:ui';

import 'package:flutter/material.dart';

class FirstSlide extends StatelessWidget {
  const FirstSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Image(
              image: AssetImage('assets/images/ey.png')
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Ey,', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'I\'m', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Alberto Chamorro', style: TextStyle(color: Color(0xff2fbf71), fontWeight: FontWeight.bold))
                  ]
                ),
              )
          ],)
        ],
      )
    );
  }
}