import 'package:selim_trade/feature/services/data/model/gates_model.dart';
import 'package:selim_trade/feature/services/domain/repositories/gate_repo.dart';

class GateUseCase {
  GateUseCase({required this.repo});
  final GatesRepo repo;
  Future<List<GatesModel>> getGates() async {
    try {
      return await repo.getGates();
    } catch (e) {
      rethrow;
    }
  }
}
