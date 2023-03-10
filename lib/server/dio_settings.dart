import 'package:dio/dio.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'http://161.35.29.179:8002/api/v1/selim/',
      connectTimeout: 20000,
      receiveTimeout: 20000,
    ),
  );

  void initialSettings() {
    final interceptors = dio.interceptors;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          return handler.next(e);
        },
      ),
    );
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }
}
