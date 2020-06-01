import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';
import 'package:hackathonbmg/pages/sucesso.dart';

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
            title: Text('Duda'),
            content: Container(
              height: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/duda3.png',
                    width: 100,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(msg),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SucessoScreen()));
                      },
                      child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF5A00),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('Utilizar',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                    ),
                ],
              ),
            ),
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
                                mostrarMsg('Bem vindo à sua primeira missão! Utilize o serviço POUPE PRA MIM para conseguir ter R\$ 100,00 no seu cofrinho digital.\n O serviço POUPE PRA MIM da BMG fará com que você consiga poupar seu dinheiro para iniciar seus investimentos. Vamos INVESTIR!');
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
                                              'Missão 01',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Poupe R\$100,00')
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
                            GestureDetector(
                              onTap: (){
                                 mostrarMsg('Parabéns! Você está indo super bem! Utilize o serviço SUPER POUP para ter um rendimento mensal podendo resgatar a qualquer momento.\n Vamos utilizar os R\$ 100,00 da Missão 1 para fazer eles renderem!');
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
                                        flex: 8,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Missão 02',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text('Invista SUPER POUP')
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
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: (){
                                mostrarMsg('Muito bem! Utilize o serviço VOLTE PRA MIM onde você receberá uma parte do seu dinheiro de volta.\n Para conseguir completar esta missão use nosso cartão de débito e crédito! Caso de dúvidas acesse nossa comunidade na opção Home');
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
                                          child: Stack(
                                            children: <Widget>[
                                              Container(
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/images/growth.png'))),
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
                                              'Missão 03',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Volte R\$ 100,00')
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
                            GestureDetector(
                              onTap: (){
                                mostrarMsg('Complete a missão anterior para mais detalhes.');
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
                                        flex: 8,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Missão 04',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Invista R\$ 100,00 no BMG PRÉ 1 ano')
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
                                                        image: AssetImage('assets/images/money.png'))),
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
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: (){
                                mostrarMsg('Complete a missão anterior para mais detalhes.');
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
                                              'Missão 05',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text('Poupe ou volte R\$ 200,00')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      )),
                 
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
            top: 50,
            child: Container(
                width: 200,
                child: Text('Seja bem vindo a Academia! Aqui você seguirá os passos para conseguir ter uma vida financeira saudável!',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
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
