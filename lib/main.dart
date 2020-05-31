import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathonbmg/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: NeumorphicTheme(
      //   usedTheme: UsedTheme.LIGHT, //or DARK / SYSTEM
      //   darkTheme: NeumorphicThemeData(
      //     baseColor: Color(0xff333333),
      //     accentColor: Colors.orange,
      //     lightSource: LightSource.topLeft,
      //     depth: 4,
      //     intensity: 0.3,
      //   ),
      //   theme: NeumorphicThemeData(
      //     baseColor: Color(0xffDDDDDD),
      //     accentColor: Colors.orangeAccent,
      //     lightSource: LightSource.topLeft,
      //     depth: 6,
      //     intensity: 0.5,
      //   ),
      home: LoginPage(),
    );
  }
}
