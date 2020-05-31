import 'package:flutter/material.dart';
import 'package:hackathonbmg/pages/menu.dart';
import 'package:hackathonbmg/pages/perfil.dart';
import 'package:hackathonbmg/pages/trilha.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget widget = Text('');
    if (selectedIndex == 0) {
      widget = MenuPage();
    } else if (selectedIndex == 1) {
      widget = TrilhaScreen();
    } else if (selectedIndex == 2) {
      widget = PerfilPage();
    }
    return Scaffold(
      body: widget,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Academia'),
              icon: Icon(Icons.school),
            ),
            BottomNavigationBarItem(
              title: Text('Perfil'),
              icon: Icon(Icons.account_circle),
            ),
          ]),
    );
  }
}
