import 'package:selim_trade/feature/services/data/model/advantage_model.dart';

abstract class AdvantageRepo {
  Future<List<AdvantageModel>> getAdvantage();
}
