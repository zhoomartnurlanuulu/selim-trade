import 'package:selim_trade/feature/services/data/model/advantage_model.dart';
import 'package:selim_trade/feature/services/domain/repositories/advantage_repo.dart';
import 'package:dio/dio.dart';
import 'package:selim_trade/api/catch_exception.dart';

class AdvantageRepoImpl implements AdvantageRepo {
  AdvantageRepoImpl({required this.dio});
  final Dio dio;
  @override
  Future<List<AdvantageModel>> getAdvantage() async {
    try {
      final response = await dio.get('gate-advantages/');

      return response.data
          .map<AdvantageModel>((e) => AdvantageModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
