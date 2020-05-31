import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/investor_model.dart';

class QuestionarioPage1 extends StatefulWidget {
  @override
  _QuestionarioPage1State createState() => _QuestionarioPage1State();
}

class _QuestionarioPage1State extends State<QuestionarioPage1> {
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

              Positioned(
                  bottom: MediaQuery.of(context).size.height / 2,
                  right: 1,
                  left: 230,
                  child: Image.asset(
                    'assets/duda3.png',
                    height: 150,
                  )),

              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(
                  top: 90,
                  right: 100,
                  left: 1,
                ),
                child: Positioned(
                  bottom: MediaQuery.of(context).size.height / 2,
                  
                  child: Image.asset(
                    'assets/balao.png',
                    height: 190,
                  )),
              ),

              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(
                  top: 100,
                  right: 100,
                  left: 1,
                ),
                child: Positioned(
                  bottom: MediaQuery.of(context).size.height / 2,
                  
                  child: Padding(
                          padding: EdgeInsets.all(21),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Qual forma você gostaria de investir?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              )
                            ],
                          ),
                        )),
              ),

              
  
               
                  
              Positioned(
                left: -10,
                right: -10,
                bottom: -150,
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: double.maxFinite,
                      height: MediaQuery.of(context).size.height / 1.5,
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
                             
                              Text(
                                'Selecione uma das opções',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
             
              Positioned(
                  bottom: 10,
                  right: 20,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => InvestroModelScreen()));
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF5A00),
                          ),
                      child: Text('Próximo',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
