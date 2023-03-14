import 'package:dio/dio.dart';
import 'package:selim_trade/feature/home/data/model/phone_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/phone_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class PhoneRepoImpl implements PhoneRepo {
  PhoneRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<List<PhoneModel>> getPhones() async {
    try {
      final response = await dio.get('phones/');

      return response.data
          .map<PhoneModel>((e) => PhoneModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
