part of 'gates_cubit.dart';

@freezed
class GatesState with _$GatesState {
  const factory GatesState.loading() = _Loading;
  const factory GatesState.success(List<GatesModel> model) = _Success;
  const factory GatesState.error(CatchException error) = _Error;
}
