import 'package:dio/dio.dart';

import 'package:selim_trade/feature/home/data/model/benifits_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/benifits_repo.dart';
import 'package:selim_trade/server/catch_exception.dart';

class BenifitsRepoImpl implements BenifitsRepo {
  BenifitsRepoImpl({
    required this.dio,
  });
  Dio dio;
  @override
  Future<List<BenifitsModel>> getBenifits() async {
    try {
      final response = await dio.get('selim/advantages/');
      return response.data
          .map<BenifitsModel>((e) => BenifitsModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
