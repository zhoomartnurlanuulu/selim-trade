part of 'advantage_cubit.dart';

@freezed
class AdvantageState with _$AdvantageState {
  factory AdvantageState.loading() = _Loading;
  factory AdvantageState.success(List<AdvantageModel> model) = _Success;
  factory AdvantageState.error(CatchException error) = _Error;
}
