import 'package:dio/dio.dart';

class CatchException {
  CatchException({required this.message});
  String message;

  static CatchException convertException(dynamic error) {
    if (error is DioError && error.error is CatchException) {
      return error.error;
    }
    if (error is DioError) {
      if (error.type == DioErrorType.connectTimeout) {
        return CatchException(message: 'не удалось подключиться');
      } else if (error.type == DioErrorType.receiveTimeout) {
        return CatchException(message: 'dhjagskasm');
      } else if (error.response == null) {
        return CatchException(message: 'нет интернета');
      } else if (error.response!.statusCode == 405) {
        return CatchException(message: '4');
      } else if (error.response!.statusCode == 409) {
        return CatchException(message: 'ghjk');
      } else if (error.response!.statusCode == 500) {
        return CatchException(message: 'valueMap');
      } else {
        return CatchException(message: 'error');
      }
    }
    if (error is CatchException) {
      return error;
    } else {
      return CatchException(message: 'Системная ошибка');
    }
  }
}
