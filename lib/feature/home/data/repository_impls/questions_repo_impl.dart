import 'package:dio/dio.dart';

import 'package:selim_trade/feature/home/data/model/questions_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/questions_repo.dart';
import 'package:selim_trade/server/catch_exception.dart';

class QuestionsRepoImpl implements QuestionsRepo {
  QuestionsRepoImpl({
    required this.dio,
  });
  final Dio dio;
  @override
  Future<QuestionsModel> questions(
      String name, String phone, String content) async {
    try {
      final response = await dio.post(
        'selim/questions/',
        data: {'username': name, 'phone': phone, 'content': content},
      );
      return QuestionsModel.fromJson(response.data);
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
