import 'package:selim_trade/feature/services/data/model/gates_model.dart';

abstract class GatesRepo {
  Future<List<GatesModel>> getGates();
}
