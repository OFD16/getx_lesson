import 'package:dio/dio.dart';
import 'package:getx_lesson/services/http_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

var baseUrl = dotenv.env['BASE_URL'];
var newsApiKey = dotenv.env['API_KEY'];

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  @override
  Future<Response> getRequest(String url) async {
    Response response;

    try {
      response = await _dio.get(url);
    } on DioException catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({"apiKey": newsApiKey});

        print("REQUEST[${options.method}] => PATH: ${options.path}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print(
            "RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}");
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        print(
            "ERROR[${e.response?.statusCode}] => PATH: ${e.requestOptions.path}");
        return handler.next(e);
      },
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl!,

      // headers: {
      //   "Authorization": "Bearer $API_KEY",
      // },
    ));
    initializeInterceptors();
  }
}
