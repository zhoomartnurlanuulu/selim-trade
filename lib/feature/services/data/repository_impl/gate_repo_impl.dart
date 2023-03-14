import 'package:dio/dio.dart';
import 'package:selim_trade/feature/services/data/model/gates_model.dart';
import 'package:selim_trade/feature/services/domain/repositories/gate_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class GatesRepoImpl implements GatesRepo {
  GatesRepoImpl({required this.dio});
  final Dio dio;
  @override
  Future<List<GatesModel>> getGates() async {
    try {
      final response = await dio.get('gates/');
      return response.data
          .map<GatesModel>((e) => GatesModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
