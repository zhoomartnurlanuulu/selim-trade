part of 'phones_cubit.dart';

@freezed
class PhonesState with _$PhonesState {
  const factory PhonesState.initial() = _Initial;
  const factory PhonesState.success(List<PhoneModel> model) = _Success;
  const factory PhonesState.error(CatchException error) = _Error;
}
