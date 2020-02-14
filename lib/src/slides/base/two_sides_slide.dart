import 'package:flutter/material.dart';

class TwoSidesSlide extends StatelessWidget {
  final Widget leftChild;
  final Widget rightChild;
  final Widget stackedChild;

  const TwoSidesSlide(
      {Key key, this.leftChild, this.rightChild, this.stackedChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return constraints.maxWidth < 1020
              ? Column(
                  children: getTwoSlides(context, true, constraints),
                )
              : Row(
                  children: getTwoSlides(context, false, constraints),
                );
      }),
      stackedChild ?? Container(),
    ]));
  }

  List<Widget> getTwoSlides(BuildContext context, bool columnMode, BoxConstraints constraints) {
    final Widget bottomChild = Container(
      color: Theme.of(context).backgroundColor,
      padding: 
        !columnMode ?
          EdgeInsets.only(left: 30, right: 20) :
          EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: rightChild
    );
    return [
      Flexible(
        flex: columnMode ? 1 : 2,
        fit: FlexFit.tight,
        child: Container(
            color: Theme.of(context).backgroundColor,
            padding: !columnMode ? EdgeInsets.only(right: 30) : null,
            child: leftChild
        ),
      ),
      Flexible(
        flex: 3,
        fit: FlexFit.tight,
        child: columnMode ?
          SingleChildScrollView(
            child: bottomChild
          ) :
          bottomChild
      )
    ];
  }
}
