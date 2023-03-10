import 'package:dio/dio.dart';

import 'package:selim_trade/feature/home/data/model/services_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/services_repo.dart';
import 'package:selim_trade/server/catch_exception.dart';

class ServicesRepoImpl implements ServicesRepo {
  @override
  ServicesRepoImpl({
    required this.dio,
  });
  Dio dio;
  @override
  Future<List<ServicesModel>> getServices() async {
    try {
      final response = await dio.get('services/');
      return response.data
          .map<ServicesModel>((e) => ServicesModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
