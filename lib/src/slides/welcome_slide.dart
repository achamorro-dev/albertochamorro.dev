import 'dart:ui';

import 'package:albertochamorro/src/widgets/theme_switch_widget.dart';
import 'package:flutter/material.dart';

class WelcomeSlide extends StatefulWidget {
  const WelcomeSlide({Key key}) : super(key: key);

  @override
  _WelcomeSlideState createState() => _WelcomeSlideState();
}

class _WelcomeSlideState extends State<WelcomeSlide> {
  bool _textVisible = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      _textVisible = true;
    });
  }

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
              child: Image(image: AssetImage('assets/images/ey.png')),
            ),
            ThemeSwitch(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('hey!', style: Theme.of(context).textTheme.headline2),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'i\'m ',
                          style: Theme.of(context).textTheme.headline2),
                      TextSpan(
                          text: 'Alberto Chamorro',
                          style: Theme.of(context).textTheme.headline1)
                    ]),
                  ),
                  AnimatedOpacity(
                      opacity: _textVisible ? 0.7 : 0.0,
                      duration: Duration(seconds: 2),
                      curve: Curves.easeInOut,
                      child: Text('swipe or press ➡️ to continue',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(fontSize: 18))),
                ],
              ),
            ),
          ],
        ));
  }
}
