import 'package:selim_trade/feature/home/data/model/address_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/address_repo.dart';

class AddressUseCase {
  AddressUseCase({required this.repo});
  final AddressRepo repo;
  Future<List<AddressModel>> getAddress() async {
    try {
      return await repo.getAddress();
    } catch (e) {
      rethrow;
    }
  }
}
