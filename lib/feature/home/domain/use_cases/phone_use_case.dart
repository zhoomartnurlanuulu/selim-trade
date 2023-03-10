import 'package:selim_trade/feature/home/data/model/phone_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/phone_repo.dart';

class PhoneUseCase {
  PhoneUseCase({required this.repo});
  PhoneRepo repo;
  Future<List<PhoneModel>> getPhones() async {
    try {
      return await repo.getPhones();
    } catch (e) {
      rethrow;
    }
  }
}
