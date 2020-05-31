import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/investor_type1.dart';
import 'package:hackathonbmg/pages/tutorial2.dart';

class TagProfileScreen extends StatefulWidget {
  @override
  _TagProfileScreenState createState() => _TagProfileScreenState();
}

class _TagProfileScreenState extends State<TagProfileScreen> {
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
          left: 30,
          top: 120,
          child: Container(
              width: 250,
              child: Text(
                  'Ola, voce precisa de XYZ, fdsafdsafdsafdsafdf, fjkdnsa lkf dsa fdkjs afdjsa fkdj sjakfdsja fdks afdsajhf dsahjf dsajh fdsaf')),
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
          bottom: 0,
          left: -10,
          right: -10,
          child: Container(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 2,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text('Lorem ipsum',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    RadioListTile(
                      value: 'sim',
                      groupValue: selectedValue,
                      onChanged: (a) => setState(() => selectedValue = a),
                      title: Text('Sim'),
                    ),
                    RadioListTile(
                      value: 'nao',
                      groupValue: selectedValue,
                      onChanged: (a) => setState(() => selectedValue = a),
                      title: Text('Nao'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InvestorType1Screen()));
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0XFFFF5A00),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Text('Próximo',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
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
