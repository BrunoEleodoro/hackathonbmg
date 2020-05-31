import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hackathonbmg/pages/cadastro.dart';

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
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
                      height: MediaQuery.of(context).size.height / 1.1,
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
                          Container(
                            width: 200,
                            height: 100,
                            alignment: Alignment.center,
                            child: Image.asset(
                                'assets/banco_bmg_logo.png',
                                height: 180,
                              )
                          ),
                          _TextField(
                            label: 'E-mail',
                            hint: 'treinador@bmg.com',
                            onChanged: (a) {},
                          ),
                          _TextField(
                            label: 'CPF',
                            hint: '999.999.999-99',
                            onChanged: (a) {},
                          ),
                          _TextField(
                            label: 'Data de nascimento',
                            hint: 'mm/dd/yyyy',
                            onChanged: (a) {},
                          ),
                          _TextField(
                            label: 'Senha',
                            hint: '',
                            onChanged: (a) {},
                          ),
                          SizedBox(
                                height: 10,
                              ),
                           GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => CadastroPage()));
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
                            child: Text('Cadastrar',
                                style: TextStyle(color: Colors.white, fontSize: 25)),
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

