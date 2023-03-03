part of 'services_cubit.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.loading() = _Loading;
  const factory ServicesState.success(List<ServicesModel> model) = _Success;
  const factory ServicesState.error(CatchException error) = _Error;
}
