import 'package:albertochamorro/src/data/alberto_data.dart';
import 'package:albertochamorro/src/widgets/grid_list_item.dart';
import 'package:albertochamorro/src/widgets/theme_switch_widget.dart';
import 'package:flutter/material.dart';

import 'base/two_sides_slide.dart';

class WorkExperienceSlide extends StatelessWidget {
  final WorkExperienceData experienceData;

  WorkExperienceSlide({Key key, this.experienceData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoSidesSlide(
        stackedChild: ThemeSwitch(),
        leftChild: Stack(fit: StackFit.expand, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('👔', style: TextStyle(fontSize: 60)),
              SizedBox(width: 10),
              Text('experience', style: Theme.of(context).textTheme.headline1)
            ],
          ),
        ]),
        rightChild: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getInformationWidgets(context),
          ),
        ));
  }

  List<Widget> getInformationWidgets(BuildContext context) {
    List<Widget> result = [
      Text(experienceData.title, style: Theme.of(context).textTheme.headline2),
      Text(experienceData.location,
          style: Theme.of(context).textTheme.headline3),
      SizedBox(
        height: 10,
      ),
    ];

    result.addAll(experienceData.information
        .map((info) => GridListItem(text: info))
        .toList());

    return result;
  }
}
