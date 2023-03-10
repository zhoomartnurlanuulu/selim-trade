import 'package:selim_trade/feature/home/data/model/work_time_model.dart';

abstract class WorkTimeRepo {
  Future<List<WorkTimeModel>> workTime();
}
