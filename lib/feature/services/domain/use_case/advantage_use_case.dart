import 'package:selim_trade/feature/services/data/model/advantage_model.dart';
import 'package:selim_trade/feature/services/domain/repositories/advantage_repo.dart';

class AdvantageUseCase {
  AdvantageUseCase({required this.repo});
  AdvantageRepo repo;
  Future<List<AdvantageModel>> getAdvantage() async {
    try {

      return await repo.getAdvantage();
    } catch (e) {
      rethrow;
    }
  }
}
