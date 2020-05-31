import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hackathonbmg/pages/cadastro.dart';
import 'package:hackathonbmg/pages/inicio.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                left: 10,
                top: 100,
                child: Stack(children: <Widget>[
                  Container(
                      width: 200,
                      child: Text('Entre na sua conta',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 40))),
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
                        'assets/login.png',
                        height: 180,
                      )),
                ]),
              ),
              Positioned(
                left: -10,
                right: -10,
                bottom: -10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 1.45,
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
                              _TextField(
                                label: 'E-mail',
                                hint: 'treinador@bmg.com',
                                onChanged: (a) {},
                              ),
                              _TextField(
                                label: 'Senha',
                                hint: '',
                                onChanged: (a) {},
                              ),
                              Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Text('Esqueci minha senha',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14))),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => InicioPage()));
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 150,
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0XFFFF5A00),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Text('Entrar',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text('Não tem uma conta?',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14))),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CadastroPage()));
                                },
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: 150,
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          color: Color(0XFF5E5652),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15))),
                                      child: Text('Cadastrar',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25)),
                                    ),
                                  ],
                                ),
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
