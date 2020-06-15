import 'package:codehouseflutter/main.dart';
import 'package:dio/dio.dart';
import 'package:dio_flutter_transformer/dio_flutter_transformer.dart';

class DioManager {
  static DioManager _instance;

  static DioManager getInstance() {
    if (_instance == null) {
      _instance = DioManager();
    }
    return _instance;
  }

  Dio dio = new Dio();
  DioManager() {
    dio.transformer = new FlutterTransformer();
    dio.options.headers = {
      'version': '3.0.9',
      'Authorization': '_token',
    };
    dio.options.baseUrl = 'https://api.cleanown.cn';
    dio.options.connectTimeout = 10000;
    dio.options.receiveTimeout = 5000;

    // dio.interceptors.add()
  }

  get(String url, params, Function successCallBack, Function errorCallBack) async {
    _requestHttp(url, successCallBack, 'get', params, errorCallBack);
  }

  post(String url, FormData params, Function successCallBack, Function errorCallBack) async {
    _requestHttp(url, successCallBack, 'post', params, errorCallBack);
  }

  _requestHttp(String url, Function successCallBack,
    [String method, dynamic params, Function errorCallBack]) async {
      Response response;
      try {
        if (method == 'get') {
          if (params != null && params.isNotEmpty) {
            response = await dio.get(url, queryParameters: params);
          } else {
            response = await dio.get(url);
          }
        } else if (method == 'post') {
          if (params != null && params.isNotEmpty) {
            response = await dio.post(url, data: params);
          } else {
            response = await dio.post(url);
          }
        }
      } on DioError catch(error) {
        Response errorResponse;
        if (error.response != null) {
          errorResponse = error.response;
        } else {
          errorResponse = new Response(statusCode: 500);
        }
        // 请求超时
        if (error.type == DioErrorType.CONNECT_TIMEOUT) {
          errorResponse.statusCode = ResultCode.CONNECT_TIMEOUT;
        }
        // 一般服务器错误
        else if (error.type == DioErrorType.RECEIVE_TIMEOUT) {
          errorResponse.statusCode = ResultCode.RECEIVE_TIMEOUT;
        }

        if (GlobalConfig.isDebug) {
          print('请求异常：' + error.toString());
          print('请求异常url：' + url);
          print('请求头：' + dio.options.headers.toString());
          print('method' + dio.options.method);
        }
        _error(errorCallBack, error.message);
        return '';
      }
      // debug模式打印相关数据
      if (GlobalConfig.isDebug) {
        print('请求url: ' + url);
        print('请求头: ' + dio.options.headers.toString());
        if (params != null) {
          print('请求参数: ' + params.toString());
        }
        if (response != null) {
          print('返回参数: ' + response.toString());
        }
      }
      Map<String, dynamic> dataMap = response.data;
      if (dataMap == null || dataMap['code'] == 0) {
        _error(errorCallBack, '错误码：' + dataMap['errorCode'].toString() + '，' + response.data.toString());
      }else if (successCallBack != null) {
          successCallBack(dataMap);
      }
    }
    _error(Function errorCallBack, String error) {
      if (errorCallBack != null) {
        errorCallBack(error);
      }
    }
}

class ResultCode {

  //正常返回是1
  static const SUCCESS = 1;
  
  //异常返回是0
  static const ERROR = 1;
  
  /// When opening  url timeout, it occurs.
  static const CONNECT_TIMEOUT = -1;

  ///It occurs when receiving timeout.
  static const RECEIVE_TIMEOUT = -2;

  /// When the server response, but with a incorrect status, such as 404, 503...
  static const RESPONSE = -3;
  /// When the request is cancelled, dio will throw a error with this type.
  static const CANCEL = -4;

  /// read the DioError.error if it is not null.
  static const DEFAULT = -5;
}