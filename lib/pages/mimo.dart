import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/sucesso.dart';

class MimoScreen extends StatefulWidget {
  @override
  _MimoScreenState createState() => _MimoScreenState();
}

class _MimoScreenState extends State<MimoScreen> {
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
          top: 100,
          left: -10,
          right: -10,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.4,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset(
                        'assets/perfil.png',
                        height: 150,
                      ),
                    ),
                    Text('Parabéns, você ganhou um mimo!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/perfil.png',
                        height: 120,
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
                          MaterialPageRoute(builder: (context) => SucessoScreen()));
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
                      child: Text('Receber',
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
