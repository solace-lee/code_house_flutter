import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/Provider.dart';
import 'common/global.dart';
import 'routes.dart';

class GlobalConfig {
  static bool isDebug = true; //是否是调试模式
  static bool dark = false;
  static Color fontColor = Colors.black54;
}

void main() => Global.init().then((e) => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
    ],
    child: MyApp(),
)));

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
