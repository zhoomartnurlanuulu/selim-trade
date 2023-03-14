import 'package:dio/dio.dart';
import 'package:selim_trade/feature/home/data/model/work_time_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/work_time_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class WorkTimeRepoImpl implements WorkTimeRepo {
  WorkTimeRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<List<WorkTimeModel>> workTime() async {
    try {
      final response = await dio.get('working-time/');

      return response.data
          .map<WorkTimeModel>((e) => WorkTimeModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
