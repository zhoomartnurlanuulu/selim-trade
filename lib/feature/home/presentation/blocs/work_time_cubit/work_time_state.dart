part of 'work_time_cubit.dart';

@freezed
class WorkTimeState with _$WorkTimeState {
  const factory WorkTimeState.initial() = _Initial;
  const factory WorkTimeState.success(List<WorkTimeModel>model)  = _Success;
  const factory WorkTimeState.error(CatchException error) = _Error;
}
