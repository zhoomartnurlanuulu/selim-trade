import 'package:selim_trade/feature/home/data/model/address_model.dart';

abstract class AddressRepo {
  Future<List<AddressModel>> getAddress();
}
