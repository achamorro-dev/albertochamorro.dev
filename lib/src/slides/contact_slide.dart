import 'package:albertochamorro/src/widgets/contact_icon_info.dart';
import 'package:flutter/material.dart';

import 'package:albertochamorro/src/slides/base/two_sides_slide.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSlide extends StatelessWidget {
  const ContactSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
      leftChild: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: Image(
                  image: AssetImage('assets/images/alberto.png'),
                  height: 250
                ),
              )
            ],
          ),
        ]
      ),
      
      rightChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Alberto Chamorro Ruiz', style: Theme.of(context).textTheme.headline3),
          SizedBox(height: 10,),
          Text(
            'Enthusiast of technology, specialized in frontend development and highly motivated with mobile development using Flutter. Organizer of Flutter Developer Group in Madrid',
            style: Theme.of(context).textTheme.bodyText2
          ),
          SizedBox(height: 20,),
          ContactIconInfo(
            icon: FontAwesomeIcons.google,
            color: Color(0xffdb4a39),
            text: 'a.chamorro.ruiz@gmail.com',
            link: 'mailto://a.chamorro.ruiz@gmail.com'
          ),
          SizedBox(height: 8,),
          ContactIconInfo(
            icon: FontAwesomeIcons.linkedin,
            color: Color(0xff0e76a8),
            text: 'https://www.linkedin.com/in/alberto-chamorro/',
            link: 'https://www.linkedin.com/in/alberto-chamorro/',
          ),
          SizedBox(height: 8,),
          ContactIconInfo(
            icon: FontAwesomeIcons.twitter,
            color: Color(0xff00acee),
            text: '@achamorro_',
            link: 'https://twitter.com/achamorro_',
          ),
          SizedBox(height: 8,),
          ContactIconInfo(
            icon: FontAwesomeIcons.link,
            color: Color(0xFF02569b),
            text: 'https://albertochamorro.dev',
            link: 'https://albertochamorro.dev'
          ),
          SizedBox(height: 8,),
          ContactIconInfo(
            icon: FontAwesomeIcons.github,
            color: Color(0xff24292e),
            text: 'https://github.com/ach4m0/',
            link: 'https://github.com/ach4m0/'
          ),
        ],
      ),
    );
  }
}