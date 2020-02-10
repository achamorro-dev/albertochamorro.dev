import 'package:albertochamorro/src/widgets/theme_switch_widget.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class ThanksSlide extends StatelessWidget {
  const ThanksSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          ThemeSwitch(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                child: FlareActor(
                  'assets/images/blue_heart.flr',
                  animation: 'thanks',
                ),
              ),
              Text('thanks!', style: Theme.of(context).textTheme.headline1)
            ]
          ),
        ]
      ),
    );
  }
}