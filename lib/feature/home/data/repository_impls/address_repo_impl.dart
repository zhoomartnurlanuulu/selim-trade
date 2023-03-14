import 'package:dio/dio.dart';
import 'package:selim_trade/feature/home/data/model/address_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/address_repo.dart';
import 'package:selim_trade/api/catch_exception.dart';

class AddressRepoImpl implements AddressRepo {
  AddressRepoImpl({required this.dio});
  Dio dio;
  @override
  Future<List<AddressModel>> getAddress() async {
    try {
      final response = await dio.get('addresses/');

      return response.data
          .map<AddressModel>((e) => AddressModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
