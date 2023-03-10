import 'package:selim_trade/feature/home/data/model/work_time_model.dart';
import 'package:selim_trade/feature/home/domain/repositories/work_time_repo.dart';

class WorkTimeUseCase {
  WorkTimeUseCase({required this.repo});
  final WorkTimeRepo repo;
  Future<List<WorkTimeModel>> workTime() async {
    try {
      return await repo.workTime();
    } catch (e) {
      rethrow;
    }
  }
}
