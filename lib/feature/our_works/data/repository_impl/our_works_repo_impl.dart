import 'package:dio/dio.dart';

import 'package:selim_trade/feature/our_works/data/model/our_works_model.dart';
import 'package:selim_trade/feature/our_works/domain/repositories/our_works_repo.dart';
import 'package:selim_trade/server/catch_exception.dart';

class OurWorksRepoImpl implements OurWorksRepo {
  OurWorksRepoImpl({
    required this.dio,
  });
  Dio dio;
  @override
  Future<List<OurWorksModel>> getAllWorks() async {
    try {
      final response = await dio.get('selim/our-works');
      return response.data
          .map<OurWorksModel>((e) => OurWorksModel.fromJson(e))
          .toList();
    } catch (e) {
      throw CatchException.convertException(e);
    }
  }
}
