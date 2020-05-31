import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
            width: MediaQuery.of(context).size.width,
            height: 600,
            // color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 500,
                      child: Card(
                        child: SingleChildScrollView(
                          child: Column(children: <Widget>[]),
                        ),
                      ),
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TutorialPage2()));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0XFFFF5A00),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15))),
                        child: Text('Próximo',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                      ),
                    ))
              ],
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: Container(
            width: 200,
            child: Text('Aprenda mais sobre educação financeira',
                style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
        ),
      ],
    ));
  }
}
