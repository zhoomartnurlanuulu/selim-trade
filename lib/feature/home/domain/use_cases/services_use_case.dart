import 'package:selim_trade/feature/home/data/model/services_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/services_repo.dart';

class ServicesUseCase {
  ServicesUseCase({
    required this.repo,
  });
  final ServicesRepo repo;
  Future<List<ServicesModel>> getServices() async {
    try {
      return await repo.getServices();
    } catch (e) {
      rethrow;
    }
  }
}
