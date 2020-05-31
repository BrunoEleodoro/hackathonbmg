import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
                top:180,
                child: Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    alignment: Alignment.center,
                    child: Image.asset(
                        'assets/logo.png',
                        height: 400,
                      )
                  ),
                ]),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
