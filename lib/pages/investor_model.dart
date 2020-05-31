import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/index.dart';
import 'package:hackathonbmg/pages/mimo.dart';
import 'package:hackathonbmg/pages/menu.dart';

class InvestroModelScreen extends StatefulWidget {
  @override
  _InvestroModelScreenState createState() => _InvestroModelScreenState();
}

class _InvestroModelScreenState extends State<InvestroModelScreen> {
  var selectedValue = null;
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
          top: 120,
          left: -10,
          right: -10,
          child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 50,
              child: Text(
                'Seu perfil é MODERADO',
                style: TextStyle(color: Colors.white, fontSize: 35),
              )),
        ),
        Positioned(
          top: 170,
          left: -10,
          right: -10,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.6,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Image.asset(
                        'assets/perfil.png',
                        height: 150,
                      ),
                    ),
                    Text('Moderado',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                        "Esse tipo de investidor é aquele que procura por segurança na hora de aplicar seu capital. Não está disposto a lidar com inúmeras variações e quer saber, com precisão, qual é a relação entre rentabilidade e risco.",
                        style: TextStyle(fontSize: 18)),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: -10,
            right: -10,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IndexPage()));
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF5A00),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('Próximo',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ],
                ),
              ),
            ))
      ],
    ));
  }
}
