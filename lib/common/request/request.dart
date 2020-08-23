import 'api.dart';
import 'http.dart';

class Request {
  getSearchList(String keys, Function func) async {
    DioManager.getInstance().get(
      searchStudent,
      {'hotkey': keys},
      func,
      (error) {
        print(error);
        // 进行错误处理
      }
    );
  }
}