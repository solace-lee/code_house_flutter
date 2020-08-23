import 'package:flutter/material.dart';
import 'routes.dart';

class GlobalConfig {
  static bool isDebug = true; //是否是调试模式
  static bool dark = false;
  static Color fontColor = Colors.black54;
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '学生成绩查询系统',
        // routes: routes,
        initialRoute: '/lean',
        onGenerateRoute: onGenerateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}
