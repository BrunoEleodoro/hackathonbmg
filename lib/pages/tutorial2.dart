import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial.dart';

class TutorialPage2 extends StatefulWidget {
  @override
  _TutorialPage2State createState() => _TutorialPage2State();
}

class _TutorialPage2State extends State<TutorialPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFFFFFFF),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: Text(
                  'Oi eu sou a Duda, queremos saber quais são as suas metas financeiras.',
                  style: TextStyle(fontSize: 25, color: Color(0xFFF79319)),
                ),
              ),
              Positioned(
                left: -10,
                right: -10,
                bottom: -10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Card(
                        color: Color(0xFFF7921D),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 130,
                              ),
                              Text(
                                'Para poder ajudar você a alcançar seus sonhos e metas',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 38),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height / 2,
                  right: 1,
                  left: 1,
                  child: Image.asset(
                    'assets/duda1.png',
                    height: 150,
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tutorial()));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF5A00),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15))),
                      child: Text('Próximo',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
