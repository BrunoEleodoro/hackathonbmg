import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';

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
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 80,
                              ),
                              Text(
                                'Quais são suas metas?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 22),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: double.maxFinite,
                                  height: 50,
                                  margin: EdgeInsets.symmetric(horizontal: 16),
                                  child: Card(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)),
                                        gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xFFfbbc7f),
                                              Color(0xFFfca588)
                                            ]),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Viajar',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Checkbox(
                                              value: true,
                                              activeColor: Colors.green,
                                              onChanged: (_) {},
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    )),
                Positioned(
                    top: 0,
                    left: 1,
                    right: 1,
                    child: Image.asset(
                      'assets/duda3.png',
                      height: 150,
                    )),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
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
      ],
    ));
  }
}
