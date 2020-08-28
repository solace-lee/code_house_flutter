import 'routes/lean.dart';
import 'routes/myExam.dart';
import 'routes/nav.dart';
import 'package:flutter/material.dart';
import 'routes/stateTest.dart';

// 配置路由
final routes = {
    '/home': (context) => NavBar(),
    '/myExam': (context, {arguments}) => MyExam(arguments: arguments),
    '/lean': (context) => LeanPage(),
    '/stateTest': (context) => StateTest()
 };

// 监听路由
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(
                  context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};