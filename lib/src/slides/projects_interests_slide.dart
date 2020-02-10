import 'package:albertochamorro/src/widgets/grid_list_item.dart';
import 'package:albertochamorro/src/widgets/stadium_tag.dart';
import 'package:albertochamorro/src/widgets/theme_switch_widget.dart';
import 'package:flutter/material.dart';

import 'base/two_sides_slide.dart';

class ProjectsInterestsSlide extends StatelessWidget {
  const ProjectsInterestsSlide({Key key}) : super(key: key);

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
              Text('👨🏻‍💻', style: TextStyle(fontSize: mobileWidth ? 40 : 60)),
              SizedBox(width: 10),
              Text('projects\ninterests',
                  style: Theme.of(context).textTheme.headline1.copyWith(fontSize: mobileWidth ? 50 : 60))
            ],
          ),
        ]),
        rightChild: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('projects', style: Theme.of(context).textTheme.headline2),
              SizedBox(
                height: 10,
              ),
              GridListItem(
                text:
                    'Development of different mobile applications with Flutter, a Google SDK to build beautiful and natively compiled applications for mobile, web and desktop',
              ),
              SizedBox(
                height: 18,
              ),
              GridListItem(
                text:
                    'Organizer of local meetup located at Madrid: Flutter Madrid',
              ),
              SizedBox(
                height: 18,
              ),
              GridListItem(
                text:
                    'Playing with VueJS with Nuxt framework and Tailwind CSS style library to create my personal website',
              ),
              SizedBox(
                height: 18,
              ),
              Text('interests', style: Theme.of(context).textTheme.headline2),
              SizedBox(
                height: 10,
              ),
              Wrap(
                spacing: 8,
                children: <Widget>[
                  StadiumTag(
                    text: 'Techonology and gadgets',
                  ),
                  StadiumTag(
                    text: 'Web and mobile development',
                  ),
                  StadiumTag(
                    text: 'Formula 1',
                  ),
                  StadiumTag(
                    text: 'Continuous learning',
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
