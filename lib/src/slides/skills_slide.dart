import 'package:albertochamorro/src/widgets/grid_list_item.dart';
import 'package:albertochamorro/src/widgets/stadium_tag.dart';
import 'package:albertochamorro/src/widgets/theme_switch_widget.dart';
import 'package:flutter/material.dart';

import 'package:albertochamorro/src/slides/base/two_sides_slide.dart';

class SkillsSlide extends StatelessWidget {
  const SkillsSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mobileWidth = MediaQuery.of(context).size.width <= 1024;

    return TwoSidesSlide(
        stackedChild: ThemeSwitch(),
        leftChild: Stack(fit: StackFit.expand, children: [
          Row(
            mainAxisAlignment: mobileWidth ? MainAxisAlignment.center : MainAxisAlignment.end,
            crossAxisAlignment: mobileWidth ? CrossAxisAlignment.center : null,
            children: <Widget>[
              Text('💁🏻‍♂️', style: TextStyle(fontSize: mobileWidth ? 40 : 60)),
              SizedBox(width: 10),
              Text('skills', style: Theme.of(context).textTheme.headline1.copyWith(fontSize: mobileWidth ? 50 : 60))
            ],
          ),
        ]),
        rightChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('technical', style: Theme.of(context).textTheme.headline2),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  GridListItem(text: 'Flutter', columnMode: true),
                  GridListItem(text: 'HTML5 / CSS3', columnMode: true),
                  GridListItem(text: 'NodeJS', columnMode: true),
                  GridListItem(text: 'Polymer', columnMode: true),
                ]),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GridListItem(text: 'JavaScript', columnMode: true),
                    GridListItem(text: 'Angular', columnMode: true),
                    GridListItem(text: 'VueJS', columnMode: true),
                    GridListItem(text: 'Agile methodologies', columnMode: true),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('tools', style: Theme.of(context).textTheme.headline2),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  GridListItem(text: 'Git / Github', columnMode: true),
                  GridListItem(text: 'Visual Studio Code', columnMode: true),
                  GridListItem(text: 'Adobe XD', columnMode: true),
                  GridListItem(text: 'Inkscape', columnMode: true),
                ]),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GridListItem(text: 'Attlasian tools', columnMode: true),
                    GridListItem(
                        text: mobileWidth ?
                          'Windows\nMac OS\nLinux' :
                          'Windows / Mac OS / Linux', columnMode: true),
                    GridListItem(text: 'Terminal', columnMode: true),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('soft', style: Theme.of(context).textTheme.headline2),
            Wrap(
              spacing: 8,
              children: <Widget>[
                StadiumTag(
                  text: 'Adaptability',
                ),
                StadiumTag(
                  text: 'Collaborative',
                ),
                StadiumTag(
                  text: 'Teamwork',
                ),
                StadiumTag(
                  text: 'Time Management',
                ),
                StadiumTag(
                  text: 'Problem solving',
                ),
                StadiumTag(
                  text: 'Brainstorming',
                )
              ],
            )
          ],
        ));
  }
}
