import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';

class TrilhaScreen extends StatefulWidget {
  @override
  _TrilhaScreenState createState() => _TrilhaScreenState();
}

class _TrilhaScreenState extends State<TrilhaScreen> {
  void mostrarMsg(String msg) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Aviso'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/duda3.png',
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(msg)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
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
                        child: SingleChildScrollView(
                          child: Column(children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                mostrarMsg('Parabens voce poupoueeeee');
                              },
                              child: Container(
                                width: 280,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFFD602),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Expanded(
                                          flex: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        'assets/images/pig.png'))),
                                          )),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Educação Financeira',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Poupa para mim')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 280,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFD602),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Estágio 02',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Poupa para mim R\$100')
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/security.png'))),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 280,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFD602),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 4,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/growth.png'))),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/lock.png'))),
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Estágio 03',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('Poupa para mim')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 280,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFD602),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 8,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Estágio 04',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('Poupa para mim')
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        flex: 4,
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/money.png'))),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black
                                                      .withOpacity(0.8),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/images/lock.png'))),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ]),
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
            left: 10,
            top: 40,
            child: Container(
              child: Image.asset(
                'assets/balao.png',
                height: 120,
              ),
            ),
          ),
          Positioned(
            left: 35,
            top: 60,
            child: Container(
                width: 200,
                child: Text('Complete sua trilha',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          ),
          Positioned(
              right: 30,
              top: 100,
              child: Container(
                  child: Image.asset(
                'assets/duda3.png',
                height: 100,
              ))),
        ],
      ),
    ));
  }
}
