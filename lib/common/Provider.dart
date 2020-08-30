import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'env.dart';

class Counter with ChangeNotifier, DiagnosticableTreeMixin {

  final Env config;

  Counter({this.config}) : super();

  String _count = '0';
  String get count => _count;

  void increment(String x) {
    _count = x;
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('count', count));
  }
}