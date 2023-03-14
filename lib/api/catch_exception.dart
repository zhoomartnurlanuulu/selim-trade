import 'package:dio/dio.dart';

class CatchException {
  CatchException({required this.message});
  String message;

  static CatchException convertException(dynamic error) {
    if (error is DioError) {
      if (error.type == DioErrorType.connectionTimeout) {
        return CatchException(message: 'не удалось подключиться');
      } else if (error.type == DioErrorType.receiveTimeout) {
        return CatchException(message: 'Вышло время');
      } else if (error.response == null) {
        return CatchException(message: 'нет интернета');
      } else if (error.response!.statusCode == 405) {
        return CatchException(message: 'ошибка');
      } else if (error.response!.statusCode == 409) {
        return CatchException(message: '409');
      } else if (error.response!.statusCode == 500) {
        return CatchException(message: '500');
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
