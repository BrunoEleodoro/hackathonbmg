import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/investor_model.dart';

class PerfilPage extends StatefulWidget {
  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
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
                left: -10,
                right: -10,
                bottom: -10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 1.25,
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
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                child:  Text('Ana Maria',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black, fontSize: 25))
                              ),
                              Container(
                                child: Image.asset(
                                    'assets/estrela.png',
                                    height: 60,
                                  )
                              ),
                              Container(
                                child: Image.asset(
                                    'assets/trofeu.png',
                                    height: 100,
                                  )
                              ),
                              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: MediaQuery.of(context).size.height / 1.55,
                  right: 1,
                  left: 1,
                  child: Image.asset(
                    'assets/imagem_perfil.png',
                    height: 150,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
