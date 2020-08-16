import 'package:codehouseflutter/nav/myExam.dart';
import 'package:codehouseflutter/nav/tabs/lean.dart';
import 'package:flutter/material.dart';

import 'nav/nav.dart';

class GlobalConfig {
  static bool isDebug = true;//是否是调试模式
  static bool dark = false;
  static Color fontColor = Colors.black54;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '学生成绩查询系统',
      routes: {
        '/exam': (context)=>MyExam(),
        '/search': (context)=>LeanPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),
    );
  }
}
