import 'package:flutter/material.dart';

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

class Global {

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  static String appState = '初始化中';

  static Future init () async {
    appState = '初始化完成';
  }

  static saveAppState (String x) {
    appState = x;
  }
}