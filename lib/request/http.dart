import 'package:dio/dio.dart';
import 'dart:convert';

void getHttp() async {
  try {
    Response response = await Dio().get("http://www.google.cn");
    print(response);
  } catch (e) {
    print(e);
  }
}

class DioManager {
  static DioManager _instance;
}