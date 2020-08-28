import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

EventBus eventBus = EventBus();

const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red
];

enum Event { login }

class UserLoggedInEvent {
  Map<String, bool> user = {'login': true};

  UserLoggedInEvent(user) {
    this.user = user;
    print('改变了');
  }
}

class Global {
  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");

  static String appState = '初始化中';

  static Future init() async {
    appState = '初始化完成';
  }

  static saveAppState(String x) {
    appState = x;
  }
}
