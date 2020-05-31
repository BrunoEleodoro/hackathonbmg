import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';

class TagProfileScreen extends StatefulWidget {
  @override
  _TagProfileScreenState createState() => _TagProfileScreenState();
}

class _TagProfileScreenState extends State<TagProfileScreen> {
  var selectedValue = "";
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
          left: 10,
          top: 100,
          child: Container(
            child: Image.asset(
              'assets/balao.png',
              height: 150,
            ),
          ),
        ),
        Positioned(
            right: -30,
            top: 200,
            child: Container(
                child: Image.asset(
              'assets/duda3.png',
              height: 100,
            ))),
        Positioned(
          bottom: 0,
          left: -10,
          right: -10,
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 2,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Lorem ipsum',
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
