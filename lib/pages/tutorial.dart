import 'package:flutter/material.dart';

class Tutorial extends StatefulWidget {
  @override
  _TutorialState createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          width: width,
          height: height,
          color: Color(0XFFF7921D),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: double.maxFinite,
            height: 600,
            color: Colors.red,
            child: Stack(
              children: <Widget>[],
            ),
          ),
        ),
      ],
    ));
  }
}
