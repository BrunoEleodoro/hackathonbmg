import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hackathonbmg/pages/cadastro.dart';
import 'package:hackathonbmg/pages/splash.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFF7921D),
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(
                  top: 10,
                ),
              ),
              Positioned(
                left: 20,
                top: 100,
                child: Stack(children: <Widget>[
                  Container(
                      width: 200,
                      child: Text('Aprenda mais sobre educação financeira',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),
                ]),
              ),
              Positioned(
                right: 10,
                top: 70,
                child: Stack(children: <Widget>[
                  Container(
                      width: 200,
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/menu_logo.png',
                        height: 180,
                      )),
                ]),
              ),
              Positioned(
                right: 5,
                left: 5,
                top: 180,
                child: Stack(children: <Widget>[
                  Container(
                      width: 400,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/buscarAtivo.png',
                        height: 180,
                      )),
                ]),
              ),

              /*Positioned(
                right: 10,
                top:20,
                child: Stack(
                children: <Widget>[
                  Container(
                    width: 200,
                    alignment: Alignment.center,
                    child: Image.asset(
                        'assets/buscar.svg',
                        height: 180,
                      )
                  ),
                ]),
              ),*/

              Positioned(
                left: -10,
                right: -10,
                bottom: -10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Card(
                        color: Color(0xFFFFFFFF),
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(36),
                              topRight: Radius.circular(36)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Stack(children: <Widget>[
                                  Container(
                                      width: 170,
                                      height: 170,
                                      alignment: Alignment.topRight,
                                      child: Card(
                                        color: Color(0xFFFFFFFF),
                                        elevation: 15,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(36),
                                              bottomLeft: Radius.circular(36),
                                              bottomRight: Radius.circular(36),
                                              topRight: Radius.circular(36)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16),
                                          child: Column(
                                            children: <Widget>[
                                              Container(
                                                  width: 200,
                                                  child: Image.asset(
                                                    'assets/menu_1.png',
                                                    height: 100,
                                                  )),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Container(
                                                  width: 200,
                                                  child: Text('Poupa pra mim',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12))),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                ]),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Stack(children: <Widget>[
                                  Container(
                                    width: 170,
                                    height: 170,
                                    alignment: Alignment.topRight,
                                    child: Card(
                                      color: Color(0xFFFFFFFF),
                                      elevation: 15,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36),
                                            bottomLeft: Radius.circular(36),
                                            bottomRight: Radius.circular(36),
                                            topRight: Radius.circular(36)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                                width: 200,
                                                child: Image.asset(
                                                  'assets/menu_2.png',
                                                  height: 100,
                                                )),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                                width: 200,
                                                child: Text('Simuladores',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12))),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Positioned(
                                left: 10,
                                top: 190,
                                child: Stack(children: <Widget>[
                                  Container(
                                    width: 170,
                                    height: 170,
                                    alignment: Alignment.topRight,
                                    child: Card(
                                      color: Color(0xFFFFFFFF),
                                      elevation: 15,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36),
                                            bottomLeft: Radius.circular(36),
                                            bottomRight: Radius.circular(36),
                                            topRight: Radius.circular(36)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                                width: 200,
                                                child: Image.asset(
                                                  'assets/menu_3.png',
                                                  height: 100,
                                                )),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                                width: 200,
                                                child: Text('Saiba como poupar',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12))),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                              Positioned(
                                right: 10,
                                top: 190,
                                child: Stack(children: <Widget>[
                                  Container(
                                    width: 170,
                                    height: 170,
                                    alignment: Alignment.topRight,
                                    child: Card(
                                      color: Color(0xFFFFFFFF),
                                      elevation: 15,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(36),
                                            bottomLeft: Radius.circular(36),
                                            bottomRight: Radius.circular(36),
                                            topRight: Radius.circular(36)),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                                width: 200,
                                                child: Image.asset(
                                                  'assets/menu_4.png',
                                                  height: 100,
                                                )),
                                            SizedBox(
                                              height: 1,
                                            ),
                                            Container(
                                                width: 200,
                                                child: Text(
                                                    'Como lidar com as dívidas?',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12))),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextField extends StatefulWidget {
  final String label;
  final String hint;

  final ValueChanged<String> onChanged;

  _TextField({@required this.label, @required this.hint, this.onChanged});

  @override
  __TextFieldState createState() => __TextFieldState();
}

class __TextFieldState extends State<_TextField> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.hint);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
          child: Text(
            this.widget.label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: NeumorphicTheme.defaultTextColor(context),
            ),
          ),
        ),
        Neumorphic(
          margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 4),
          boxShape: NeumorphicBoxShape.stadium(),
          style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context)),
          padding: EdgeInsets.symmetric(vertical: 14, horizontal: 18),
          child: TextField(
            onChanged: this.widget.onChanged,
            controller: _controller,
            decoration: InputDecoration.collapsed(hintText: this.widget.hint),
          ),
        )
      ],
    );
  }
}
