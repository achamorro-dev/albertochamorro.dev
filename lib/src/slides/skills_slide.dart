import 'package:albertochamorro/src/widgets/grid_list_item.dart';
import 'package:albertochamorro/src/widgets/stadium_tag.dart';
import 'package:flutter/material.dart';

import 'package:albertochamorro/src/slides/base/two_sides_slide.dart';

class SkillsSlide extends StatelessWidget {
  const SkillsSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
        leftChild: Stack(fit: StackFit.expand, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('👨🏻‍💻', style: TextStyle(fontSize: 60)),
              SizedBox(width: 10),
              Text('skills', style: Theme.of(context).textTheme.headline1)
            ],
          ),
        ]),

        rightChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Technical', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridListItem(text: 'Flutter'),
                    GridListItem(text: 'HTML5 / CSS3'),
                    GridListItem(text: 'Node.js'),
                    GridListItem(text: 'Polymer'),
                  ]
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GridListItem(text: 'JavaScript'),
                    GridListItem(text: 'Angular'),
                    GridListItem(text: 'VueJS'),
                    GridListItem(text: 'Agile methodologies'),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Text('Tools', style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridListItem(text: 'Git / Github'),
                    GridListItem(text: 'Visual Studio Code'),
                    GridListItem(text: 'Adobe XD'),
                    GridListItem(text: 'Inkscape'),
                  ]
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GridListItem(text: 'Attlasian tools'),
                    GridListItem(text: 'Windows / Mac OS / Linux'),
                    GridListItem(text: 'Terminal'),
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            Text('Soft', style: Theme.of(context).textTheme.headline2),
            Wrap(
              spacing: 8,
              children: <Widget>[
                StadiumTag(text: 'Adaptability',),
                StadiumTag(text: 'Collaborative',),
                StadiumTag(text: 'Teamwork',),
                StadiumTag(text: 'Time Management',),
                StadiumTag(text: 'Problem solving',),
                StadiumTag(text: 'Brainstorming',)
              ],
            )
          ],
        ));
  }
}
