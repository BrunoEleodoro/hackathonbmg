import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/perfil.dart';

class SucessoScreen extends StatefulWidget {
  @override
  _SucessoScreenState createState() => _SucessoScreenState();
}

class _SucessoScreenState extends State<SucessoScreen> {
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
          top: 80,
          left: -10,
          right: -10,
          child: Container(
              alignment: Alignment.center,
              width: 250,
              height: 100,
              child: Text(
                'PARABÉNS!!! \n Você alcançou o seus objetivos e aprendeu como poupar',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 25),
              )),
        ),
       
        Positioned(
          top: 170,
          left: -10,
          right: -10,
          child: Container(
            padding: const EdgeInsets.all(46.0),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.5,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(  
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/estrela.png',
                        height: 50,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/sucesso.png',
                        height: MediaQuery.of(context).size.height / 3,
                      ),
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
          child:Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PerfilPage()));
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
                      child: Text('Obrigado',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ],
                ),
              ),
          )
        )
      ],
    ));
  }
}
