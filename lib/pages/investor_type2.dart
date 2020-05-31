import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/investor_type3.dart';

class InvestorType2Screen extends StatefulWidget {
  @override
  _InvestorType2ScreenState createState() => _InvestorType2ScreenState();
}

class _InvestorType2ScreenState extends State<InvestorType2Screen> {
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
          left: 10,
          top: 100,
          child: Container(
            child: Image.asset(
              'assets/balao.png',
              height: 150,
            ),
          ),
        ),
        Positioned(
          left: 35,
          top: 120,
          child: Container(
              width: 280,
              child: Text('Me diga, qual a finalidade de seus investimentos?',
                  style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold))),
        ),
        Positioned(
            right: -30,
            top: 200,
            child: Container(
                child: Image.asset(
              'assets/duda3.png',
              height: 100,
            ))),
        Positioned(
          bottom: -10,
          left: -10,
          right: -10,
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 1.8,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text('Selecione uma opção',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    RadioListTile(
                      value: '1',
                      groupValue: selectedValue,
                      onChanged: (a) => setState(() => selectedValue = a),
                      title: Text('Começar a investir meu dinheiro'),
                    ),
                    RadioListTile(
                      value: '2',
                      groupValue: selectedValue,
                      onChanged: (a) => setState(() => selectedValue = a),
                      title: Text('Ter retornos superiores às aplicações tradicionais'),
                    ),
                    RadioListTile(
                      value: '3',
                      groupValue: selectedValue,
                      onChanged: (a) => setState(() => selectedValue = a),
                      title: Text('Crescimento do patrimônio'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvestorType3Screen()));
                      },
                      child: Container(
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color(0XFFFF5A00),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('Próximo',
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
