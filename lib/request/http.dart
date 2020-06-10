import 'package:dio/dio.dart';
void getHttp() async {
  try {
    Response response = await Dio().get("http://www.google.cn");
    print(response);
  } catch (e) {
    print(e);
  }
}