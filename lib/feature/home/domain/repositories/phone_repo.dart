import 'package:selim_trade/feature/home/data/model/phone_model.dart';

abstract class PhoneRepo {
  Future<List<PhoneModel>> getPhones();
}
