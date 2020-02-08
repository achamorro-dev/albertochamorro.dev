import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomeSlide extends StatelessWidget {
  const WelcomeSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
              image: AssetImage('assets/images/ey.png')
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('hey!', style: Theme.of(context).textTheme.headline2),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: 'i\'m ', style: Theme.of(context).textTheme.headline2),
                      TextSpan(text: 'Alberto Chamorro', style: Theme.of(context).textTheme.headline1)
                    ]
                  ),
                )
            ],),
          )
        ],
      )
    );
  }
}