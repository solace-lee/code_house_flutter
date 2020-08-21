import 'package:flutter/material.dart';
import 'nav/lean.dart';
import 'nav/nav.dart';
import 'nav/myExam.dart';

// 配置路由
final routes = {
    '/home': (context) => NavBar(),
    '/myExam': (context, {arguments}) => MyExam(arguments: arguments),
    '/lean': (context) => LeanPage()
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