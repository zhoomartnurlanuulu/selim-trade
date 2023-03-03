import 'package:selim_trade/feature/home/data/model/services_model.dart';

abstract class ServicesRepo {
  Future<List<ServicesModel>> getServices();
}
